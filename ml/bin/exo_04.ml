open Common;;

let print_100_years_old_date () =
  Printf.printf "Tu auras 100 ans en %d !\n" ((Common.read_birthdate ()) + 100);;

print_100_years_old_date ();;

