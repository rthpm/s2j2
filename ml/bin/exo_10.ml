open Common;;

let rec print_ages_aux age max =
  match max == age with
  | true -> Printf.printf "%d\n" max;
  | _ -> Printf.printf "%d\n" age;
         print_ages_aux (age + 1) max;;

let print_age () =
  let max = Common.current_year - Common.read_birthdate() in

  print_ages_aux 0 max;;

print_age ();;


