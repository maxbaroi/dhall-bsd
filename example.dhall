let types = ./types.dhall

let jname
    : Text
    = "jail"

let jdomain
    : Text
    = "test.com"

let makeHostname = \(jname : Text) -> \(domain : Text) -> jname ++ "." ++ domain

let host
    : types.Host
    = { hostname = makeHostname jname jdomain }

let config
    : types.Config
    = { jailname = jname, host }

in  ''
        ${config.jailname} {
            host.hostname = "${config.host.hostname}";
        }
    ''
