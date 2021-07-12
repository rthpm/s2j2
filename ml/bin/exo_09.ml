open Common;;

let rec print_years_aux curr max =
  match max == curr with
  | true -> Printf.printf "%d\n" max;
  | _ -> Printf.printf "%d\n" curr;
         print_years_aux (curr + 1) max;;

let print_years () =
  let birthdate = Common.read_birthdate () in
  print_years_aux birthdate Common.current_year;;

print_years ()
