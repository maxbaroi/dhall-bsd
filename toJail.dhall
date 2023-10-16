let types = ./types.dhall

in  \(config : types.Config) ->
      ''
          ${config.jailname} {
              host.hostname = "${config.host.hostname}";
          }
      ''
