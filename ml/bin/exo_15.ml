open Common;;

let build_next_str str =
  "#" ^ str;;

let rec print_pyr_aux curr_str stage =
  Printf.printf "%s\n" curr_str;
  if stage != 1 then
    print_pyr_aux (build_next_str curr_str) (stage - 1);;

let print_pyr () =
  let stages = Common.read_times () in

  print_pyr_aux "#" stages;;

print_pyr();;

