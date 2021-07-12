open Common;;

let rec count_aux times =
  match times with
  | 0 -> Printf.printf "0";
  | _ -> Printf.printf "%d\n" (times);
         count_aux (times - 1);;

let count () =
  let max = Common.read_times () in
  count_aux max;;

count ();;
