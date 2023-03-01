let yugu_jikyu = 980
let kihonkyu = 100
let jikyu = 950

(*let kyuyo x =
  if x < 30 then kihonkyu + x * jikyu
                            else kihonkyu + x * yugu_jikyu
*)

let kyuyo x =
  kihonkyu + x * (if x < 30 then jikyu else yugu_jikyu)
