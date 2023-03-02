let taisho_x zahyo = match zahyo with
  (x, y) -> (- x, y)


let chuten a b = match a with
  (x1, y1) -> match b with
  (x2, y2) -> ((x1+x2)/2, (y1+y2)/2)
