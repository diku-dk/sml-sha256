
fun try s =
    print (s ^ " -> " ^ SHA256.hashStringHex s ^ "\n")

val () = try "hi"
