let rec minimum lst = match lst with
[] -> max_int
| first :: rest ->
  let min_rest = minimum rest in
  if min_rest >= first then first
    else min_rest


type gakusei_t = {
  namae : string;
  tensuu : int;
  seiseki : string;
}


let rec gakusei_max lst = match lst with
[] -> min_int
| first :: rest ->
  let max_rest = gakusei_max rest in
  if max_rest <= first then first
    else max_rest
