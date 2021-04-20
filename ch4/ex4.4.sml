(* 
QUESTION:
Declare an enumeration type consisting of the names of six different countries.
Write a function to return the capital city of each country as a string
*)

datatype country = 
    Singapore | Malaysia | America | United_Kingdom | China | Japan

fun city Singapore = "Singapore"
  | city Malaysia = "Kuala Lumpur"
  | city America = "Washinton"
  | city United_Kingdom = "London"
  | city China = "Beijing"
  | city Japan = "Tokyo"
