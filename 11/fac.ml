let rec fac n =
  if n = 1 then 1
    else n * fac(n-1)

let rec power n m =
  if m = 0 then 1
    else n * (power n m-1)


let rec sum_of_square n =
  if n = 0 then 0
    else n*n + sum_of_square (n-1)



let rec a n =
if n = 0 then 3
else 2 * a (n-1) - 1
