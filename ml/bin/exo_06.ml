open Common;;

let rec print_hello_times_aux times =
  match times with
  | 0 -> ();
  | _ -> Printf.printf("Bonjour toi !\n");
         print_hello_times_aux (times - 1);;

let print_hello_times () =
  print_hello_times_aux (Common.read_times () - 1);;

print_hello_times ();;

