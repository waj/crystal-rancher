require "json"

class Rancher::TargetPortRule < Rancher::Object
  include JSON::Serializable

  # backendName => {"type" => "string", "transform" => "", "description" => nil, "create" => true, "update" => false, "nullable" => true, "readOnCreateOnly" => false}
  @[JSON::Field(key: "backendName")]
  property! backend_name : String

  # hostname => {"type" => "string", "transform" => "", "description" => nil, "create" => true, "update" => false, "nullable" => true, "readOnCreateOnly" => false}
  @[JSON::Field(key: "hostname")]
  property! hostname : String

  # path => {"type" => "string", "transform" => "", "description" => nil, "create" => true, "update" => false, "nullable" => true, "readOnCreateOnly" => false}
  @[JSON::Field(key: "path")]
  property! path : String

  # targetPort => {"type" => "int", "transform" => "", "description" => nil, "create" => true, "update" => false, "nullable" => true, "required" => true, "readOnCreateOnly" => false, "min" => 1, "max" => 65535}
  @[JSON::Field(key: "targetPort")]
  property! target_port : Int64
end
