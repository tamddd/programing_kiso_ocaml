type book_t ={
    title : string;
    chosya : string;
    syuppansya : string;
    nedan : int;
    isbn : string;
}

type tukihi = {
  tuki : int;
  hi : int;
}

type person_t = {
  namae : string;
  sincho : int;
  taiju : int;
  tanjobi : tukihi;
  ketsueki : string;
}

let ketsueki_hyoji p = match p with
  {namae=n; ketsueki=k} ->
  n ^ "さんの血液型は" ^ k ^ "です"
