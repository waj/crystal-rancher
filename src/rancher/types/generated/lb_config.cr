require "json"

class Rancher::LbConfig < Rancher::Object
  include JSON::Serializable

  # config => {"type" => "string", "description" => nil, "create" => true, "update" => false, "nullable" => true, "readOnCreateOnly" => false}
  @[JSON::Field(key: "config")]
  property! config : String

  # portRules => {"type" => "array[portRule]", "description" => nil, "create" => true, "update" => false, "readOnCreateOnly" => false}
  @[JSON::Field(key: "portRules")]
  property! port_rules : Array(PortRule)

  # certificateIds => {"type" => "array[reference[certificate]]", "description" => nil, "create" => true, "update" => false, "nullable" => true, "readOnCreateOnly" => false}
  # UNSUPPORTED

  # defaultCertificateId => {"type" => "reference[certificate]", "description" => nil, "create" => true, "update" => false, "nullable" => true, "readOnCreateOnly" => false}
  # UNSUPPORTED

  # stickinessPolicy => {"type" => "loadBalancerCookieStickinessPolicy", "description" => nil, "create" => true, "update" => false, "nullable" => true, "readOnCreateOnly" => false}
  @[JSON::Field(key: "stickinessPolicy")]
  property! stickiness_policy : LoadBalancerCookieStickinessPolicy
end
