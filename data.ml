open Options
open Utils

let load_options filename =
  let ic = open_in filename in
  let rec read_lines acc =
    try
      let line = input_line ic in
      let parts = String.split_on_char ',' line in
      let option_type = parse_option_type (List.nth parts 0) in
      let strike = parse_float (List.nth parts 1) in
      let expiry = parse_float (List.nth parts 2) in
      let spot = parse_float (List.nth parts 3) in
      let rate = parse_float (List.nth parts 4) in
      let volatility = parse_float (List.nth parts 5) in
      let opt = { option_type; strike; expiry; spot; rate; volatility } in
      read_lines (opt :: acc)
    with End_of_file ->
      close_in ic;
      List.rev acc
  in
  read_lines []
