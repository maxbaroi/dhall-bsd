let types = ./types.dhall

let toJail = ./toJail.dhall

let jailname
    : Text
    = "jail"

let jdomain
    : Text
    = "test.com"

let makeHostname = \(jname : Text) -> \(domain : Text) -> jname ++ "." ++ domain

let hostname = makeHostname jailname jdomain

let host
    : types.Host
    = { hostname }

let config
    : types.Config
    = { jailname, host }

in  toJail config
