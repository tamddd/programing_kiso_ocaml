(*身長と体重を与えられ、BMI指数を計算する*)
(*taikei : int float -> float -> string*)
let bmi sincho taiju =
  taiju /. (sincho *. sincho)

let yase bmi_ =
  bmi_ <= 15.

let hyojun bmi_ =
  18.5 <= bmi_ && bmi_ <= 25.

let himan bmi_ =
  25. <= bmi_ && bmi_ <= 30.

let taikei sincho taiju =
  let bmi_n = bmi sincho taiju in
  if yase bmi_n then "やせ"
    else if hyojun bmi_n then "標準"
      else if himan bmi_n then "肥満"
        else "高度肥満"
