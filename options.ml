type option_type = Call | Put

type option_data = {
  option_type : option_type;
  strike : float;
  expiry : float;
  spot : float;
  rate : float;
  volatility : float;
}
