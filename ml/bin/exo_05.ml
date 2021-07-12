open Common;;

let rec print_fart_times_aux times =
  match times with
  | 0 -> ();
  | _ -> Printf.printf("Ça farte ?\n");
         print_fart_times_aux (times - 1);;

let print_fart_times () =
  print_fart_times_aux (Common.read_times ());;

print_fart_times ();;

