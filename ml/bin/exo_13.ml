open Common;;

let p_email count =
  if count < 10 then
    Printf.printf "jean.dupont.0%d@email.fr\n" count
  else
    Printf.printf "jean.dupont.%d@email.fr\n" count
    
let rec generate_emails_aux count max =
  p_email count;
  if count < max then
    generate_emails_aux (count + 1) max;;

let generate_emails () =
  let max = Common.read_times() in

  generate_emails_aux 1 max;;

generate_emails ();;
