require "json"

class Rancher::ContainerLogs < Rancher::Object
  include JSON::Serializable

  # follow => {"type" => "boolean", "transform" => "", "description" => nil, "create" => true, "update" => false, "readOnCreateOnly" => false, "default" => true}
  @[JSON::Field(key: "follow")]
  property! follow : Bool

  # lines => {"type" => "int", "transform" => "", "description" => nil, "create" => true, "update" => false, "nullable" => true, "readOnCreateOnly" => false, "min" => 0, "default" => 100}
  @[JSON::Field(key: "lines")]
  property! lines : Int64

  # since => {"type" => "string", "transform" => "", "description" => nil, "create" => true, "update" => false, "readOnCreateOnly" => false}
  @[JSON::Field(key: "since")]
  property! since : String

  # timestamps => {"type" => "boolean", "transform" => "", "description" => nil, "create" => true, "update" => false, "nullable" => true, "readOnCreateOnly" => false, "default" => true}
  @[JSON::Field(key: "timestamps")]
  property! timestamps : Bool
end
