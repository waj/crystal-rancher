require "json"

class Rancher::ServiceProxy < Rancher::Object
  include JSON::Serializable

  # port => {"type" => "int", "transform" => "", "description" => nil, "create" => true, "update" => false, "nullable" => true, "readOnCreateOnly" => false, "min" => 0, "default" => 80}
  @[JSON::Field(key: "port")]
  property! port : Int32

  # scheme => {"type" => "enum", "transform" => "", "description" => nil, "create" => true, "update" => false, "readOnCreateOnly" => false, "options" => ["http", "https"], "default" => "http"}
  @[JSON::Field(key: "scheme")]
  property! scheme : String

  # service => {"type" => "string", "transform" => "", "description" => nil, "create" => true, "update" => false, "required" => true, "readOnCreateOnly" => false, "minLength" => 1}
  @[JSON::Field(key: "service")]
  property! service : String

  # token => {"type" => "string", "description" => nil, "create" => false, "update" => false, "readOnCreateOnly" => false}
  @[JSON::Field(key: "token")]
  property! token : String

  # url => {"type" => "string", "description" => nil, "create" => false, "update" => false, "readOnCreateOnly" => false}
  @[JSON::Field(key: "url")]
  property! url : String
end
