let types = ./types.dhall

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

in  ''
        ${config.jailname} {
            host.hostname = "${config.host.hostname}";
        }
    ''
