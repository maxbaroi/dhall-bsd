let name
    : Text
    = "test0"

let Config
    : Type
    = { hostname : Text }

let config
    : Config
    = { hostname = name }

in  ''
        ${config.hostname} {
        }
    ''
