type gakusei_t = {
  namae : string;
  tensuu : int;
  seiseki : string;
}


let tsuuchi gakusei = match gakusei with
  {namae=n; tensuu=t; seiseki=s} ->


let hyouka gakusei = match gakusei with
  {namae=n; tensuu=t; seiseki=s} ->
  {namae=n;
   tensuu=t;
   seiseki= if t >= 80 then "A"
       else if t >= 70 then "B"
         else if t >= 60 then "C" else "D"}

let hyouka gakusei = match gakusei with
  {namae=n;tensuu=t;seiseki=s}->
  if t >= 80 then {namae=n; tensuu=t; seiseki="A"}
  else if t >= 70 then {namae=n; tensuu=t; seiseki="B"}
  else if t >= 60 then {namae=n; tensuu=t; seiseki="C"}
  else then {namae=n; tensuu=t; seiseki="D"}
