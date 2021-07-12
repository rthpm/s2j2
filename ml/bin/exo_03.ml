open Common;;

let print_previous_age () =
  Printf.printf "Tu avais au moins %d ans en 2017 !\n" ((Common.read_age ()) + 2017 - Common.current_year);;

print_previous_age ();;

