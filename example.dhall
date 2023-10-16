let jname
    : Text
    = "jail"

let jdomain
    : Text
    = "test.com"

let makeHostname = \(jname : Text) -> \(domain : Text) -> jname ++ "." ++ domain

let Host
    : Type
    = { hostname : Text }

let Config
    : Type
    = { jailname : Text, host : Host }

let host
    : Host
    = { hostname = makeHostname jname jdomain }

let config
    : Config
    = { jailname = jname, host }

in  ''
        ${config.jailname} {
            host.hostname = "${config.host.hostname}";
        }
    ''
