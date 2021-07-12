open Common;;

let p_age ago age =
  Printf.printf "Il y a %d ans, tu avais %d ans.\n" ago age;;

let rec print_ages_aux ago age max =
  match max == age with
  | true -> p_age ago max
  | _ -> p_age ago age;
         print_ages_aux (ago - 1) (age + 1) max;;

let print_ages () =
  let max = Common.current_year - Common.read_birthdate() in

  print_ages_aux max 0 max;;

print_ages ();;
