require "json"

class Rancher::PublicEndpoint < Rancher::Object
  include JSON::Serializable

  # hostId => {"type" => "reference[host]", "transform" => "", "description" => nil, "create" => true, "update" => false, "readOnCreateOnly" => false}
  # UNSUPPORTED

  # instanceId => {"type" => "reference[instance]", "transform" => "", "description" => nil, "create" => true, "update" => false, "readOnCreateOnly" => false}
  # UNSUPPORTED

  # ipAddress => {"type" => "string", "description" => nil, "create" => true, "update" => false, "readOnCreateOnly" => false}
  @[JSON::Field(key: "ipAddress")]
  property! ip_address : String

  # port => {"type" => "int", "description" => nil, "create" => true, "update" => false, "nullable" => true, "readOnCreateOnly" => false}
  @[JSON::Field(key: "port")]
  property! port : Int32

  # serviceId => {"type" => "reference[service]", "transform" => "", "description" => nil, "create" => true, "update" => false, "readOnCreateOnly" => false}
  # UNSUPPORTED
end
