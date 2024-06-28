open Options

let parse_option_type = function
  | "Call" -> Call
  | "Put" -> Put
  | _ -> failwith "Unknown option type"

let parse_float str =
  try float_of_string str
  with Failure _ -> failwith ("Failed to parse float: " ^ str)
