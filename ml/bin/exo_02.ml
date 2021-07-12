Printf.printf "Quel est ton nom ?\n";;
let user = read_line();;

let print_hello_name name =
  match name with
  | "" -> Printf.printf "Et ton nom ?\n"
  | _ -> Printf.printf "Bonjour, %s !\n" user;;

print_hello_name user;;
