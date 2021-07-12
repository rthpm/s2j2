open Unix;;

module Common =
struct
  exception InvalidParams of string;;
  
  type checked_age = 
    WrongAge
    | CorrectAge of int;;

  type checked_birthdate =
    WrongBirthDate
    | CorrectBirthDate of int;;

  let current_year = (Unix.gmtime(Unix.time())).tm_year + 1900;;

  let check_age age =
    if age < 0 || age <= current_year - 2017 
      then WrongAge
      else CorrectAge age;;

  let check_birthdate birthdate =
    if birthdate < 0
      then WrongBirthDate 
      else CorrectBirthDate birthdate;;

  let read_age () =
    Printf.printf "Quel est ton age ?\n";
    let age = read_int() in

    let ck_age = check_age(age) in
    match ck_age with
      | WrongAge -> raise (InvalidParams "Wrong age entered")
      | CorrectAge numb -> numb;;

  let read_birthdate () =
    Printf.printf "En quelle année est tu né ?\n";
    let birthdate = read_int() in

    let ck_birthdate = check_birthdate(birthdate) in
    match ck_birthdate with
      | WrongBirthDate -> raise (InvalidParams "Wrong birth date entered !")
      | CorrectBirthDate date -> date;;
end;;
