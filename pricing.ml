open Options
open Owl
open Lacaml.D

let calculate_option_price (opt : option_data) =
  let steps = 1000 in
  let simulations = 10000 in
  let dt = opt.expiry /. float_of_int steps in
  let drift = (opt.rate -. 0.5 *. opt.volatility ** 2.0) *. dt in
  let diffusion = opt.volatility *. sqrt dt in

  let payoff price =
    match opt.option_type with
    | Call -> max (price -. opt.strike) 0.0
    | Put -> max (opt.strike -. price) 0.0
  in

  let generate_path () =
    let path = Mat.zeros 1 steps in
    Mat.set path 1 1 opt.spot;
    for i = 2 to steps do
      let prev_price = Mat.get path 1 (i - 1) in
      let gauss = Owl_stats.gaussian_rvs ~mu:0.0 ~sigma:1.0 in
      let new_price = prev_price *. exp (drift +. diffusion *. gauss) in
      Mat.set path 1 i new_price
    done;
    path
  in

  let payoffs = Array.init simulations (fun _ -> payoff (Mat.get (generate_path ()) 1 steps)) in
  let mean_payoff = Array.fold_left (+.) 0.0 payoffs /. float_of_int simulations in
  let discounted_payoff = mean_payoff *. exp (-. opt.rate *. opt.expiry) in
  discounted_payoff
