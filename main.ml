open Pricing
open Data

let () =
  let options = load_options "data/options_data.csv" in
  let prices = List.map calculate_option_price options in
  List.iter (Printf.printf "Option price: %f\n") prices
