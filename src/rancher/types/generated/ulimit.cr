require "json"

class Rancher::Ulimit < Rancher::Object
  include JSON::Serializable

  # hard => {"type" => "int", "description" => nil, "create" => true, "update" => false, "nullable" => true, "readOnCreateOnly" => false}
  @[JSON::Field(key: "hard")]
  property! hard : Int32

  # name => {"type" => "string", "description" => nil, "create" => true, "update" => false, "readOnCreateOnly" => false}
  @[JSON::Field(key: "name")]
  property! name : String

  # soft => {"type" => "int", "description" => nil, "create" => true, "update" => false, "nullable" => true, "readOnCreateOnly" => false}
  @[JSON::Field(key: "soft")]
  property! soft : Int32
end
