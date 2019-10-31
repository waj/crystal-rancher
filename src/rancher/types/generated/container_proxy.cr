require "json"

class Rancher::ContainerProxy < Rancher::Object
  include JSON::Serializable

  # port => {"type" => "int", "transform" => "", "description" => nil, "create" => true, "update" => false, "nullable" => true, "readOnCreateOnly" => false, "min" => 0, "default" => 80}
  @[JSON::Field(key: "port")]
  property! port : Int32

  # scheme => {"type" => "enum", "transform" => "", "description" => nil, "create" => true, "update" => false, "readOnCreateOnly" => false, "options" => ["http", "https"], "default" => "http"}
  @[JSON::Field(key: "scheme")]
  property! scheme : String
end
