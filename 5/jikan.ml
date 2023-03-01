(*目的: 時間を受け取り、午前か午後かを返す*)
(*jikan : int -> string*)
let jikan x =
  if x >= 12 then "午後" else "午前"

let test1 = jikan 12 = "午後"
let test2 = jikan 10 = "午前"
let test3 = jikan 0 = "午前"
