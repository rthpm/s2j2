open Common;;

let rec count_aux times max =
  match times with
  | 0 -> Printf.printf "%d" max;
  | _ -> Printf.printf "%d\n" (max - times);
         count_aux (times - 1) max;;

let count () =
  let max = Common.read_times () in
  count_aux max max;;

count ();;
  
