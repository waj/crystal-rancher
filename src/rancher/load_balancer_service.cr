require "json"
require "./object"

class Rancher::LoadBalancerService < Rancher::Object
  JSON.mapping(
    id: String,
    name: String,
    fqdn: String?,
    lb_config: {key: "lbConfig", type: LoadBalancerConfig}
  )

  class LoadBalancerConfig
    JSON.mapping(
      port_rules: {key: "portRules", type: Array(PortRule)}
    )
  end

  class PortRule
    JSON.mapping(
      hostname: String?,
      path: String?,
      priority: Int32,
      protocol: String,
      sourcePort: Int32,
      targetPort: Int32
    )
  end
end
