require "json"

class Rancher::ServicesPortRange < Rancher::Object
  include JSON::Serializable

  # endPort => {"type" => "int", "transform" => "", "description" => nil, "create" => true, "update" => true, "nullable" => true, "required" => true, "readOnCreateOnly" => false, "min" => 1, "max" => 65535}
  @[JSON::Field(key: "endPort")]
  property! end_port : Int64

  # startPort => {"type" => "int", "transform" => "", "description" => nil, "create" => true, "update" => true, "nullable" => true, "required" => true, "readOnCreateOnly" => false, "min" => 1, "max" => 65535}
  @[JSON::Field(key: "startPort")]
  property! start_port : Int64
end
