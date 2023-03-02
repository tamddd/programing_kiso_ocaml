let rec quick_sort lst = match lst with
[] -> []
| first :: rest ->
  let smaller = List.filter (fun x -> x <= first) rest in
  let bigger = List.filter (fun x -> first < x) rest in
  quick_sort(smaller) @ first @ quick_sort(bigger)


let take n lst p = List.filter (fun item -> p item n) lst
let take_less n lst = take n lst (<=)
let take_greater n lst = take n lst (>)

(*<=

let rec gcd n m =
  if n = 0 then m
    else gcd (n mod m) m
*)


