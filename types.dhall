{-
    Provides a convenient import of all available types
-}
let Host
    : Type
    = { hostname : Text }

let Config
    : Type
    = { jailname : Text, host : Host }

in  { Config, Host }
