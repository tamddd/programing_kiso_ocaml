let rec contain_zero lst = match lst with
[] -> false
| first :: rest -> if first = 0 then true
    else contain_zero rest

let rec sum lst = match lst with
[] -> 0
| first :: rest -> first + sum rest


let rec length lst = match lst with
[] -> 0
| first :: rest -> 1 + length rest

let rec even lst = match lst with
[] -> []
| first :: rest -> if first mod 2 = 0 then first :: even rest
                                           else even rest

let rec concat lst = match lst with
[] -> ""
| first :: rest -> first ^ concat rest


type gakusei_t = {
  namae : string;
  tensuu : int;
  seiseki : string
}

let rec count_seiseki lst = match lst with
[] -> (0, 0, 0, 0)
| {namae=n; tensuu=t; seiseki=s} :: rest ->
  let (a, b, c, d) = count_seiseki rest in
      if s = "A" then (a+1, b, c, d)
      else if s = "B" then (a, b+1, c, d)
      else if s = "C" then (a, b, c+1, d)
                           else (a, b, c, d+1)

let rec count_A lst = match lst with
[] -> 0
| {seiseki=s} :: rest ->
  let rest_count = count_A rest in
  if s = "A" then rest_count+1
         else rest_count

let rec count_A lst = match lst with
[] -> 0
| {seiseki=s} :: rest->
  if s="A" then 1 + count_A rest
                  else count_A rest



type person_t = {
  namae : string;
  sincho : int;
  taiju : int;
  tanjobi : int;
  ketsueki : string;
}

let rec count_kestueki_A lst = match lst with
[] -> 0
| {namae=n; sincho=s; taiju=t; ketsueki=k} :: rest->
  if k = "A" then 1 + count_kestueki_A rest
                    else count_kestueki_A rest

let rec count_kestueki_A lst = match lst with
[] -> 0
| first :: rest ->
  let rest_count = count_kestueki_A rest in
      if first ="A" then 1 + rest_count
                         else rest_count

