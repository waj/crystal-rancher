require "json"

class Rancher::LocalAuthConfig < Rancher::Object
  include JSON::Serializable

  # accessMode => {"type" => "string", "transform" => "", "description" => nil, "create" => true, "update" => false, "nullable" => true, "readOnCreateOnly" => false, "default" => "unrestricted"}
  @[JSON::Field(key: "accessMode")]
  property! access_mode : String

  # enabled => {"type" => "boolean", "transform" => "", "description" => nil, "create" => true, "update" => false, "nullable" => true, "readOnCreateOnly" => false}
  @[JSON::Field(key: "enabled")]
  property! enabled : Bool

  # name => {"type" => "string", "transform" => "", "description" => nil, "create" => true, "update" => false, "nullable" => true, "readOnCreateOnly" => false, "default" => "admin"}
  @[JSON::Field(key: "name")]
  property! name : String

  # password => {"type" => "password", "transform" => "", "description" => nil, "create" => true, "update" => false, "required" => true, "readOnCreateOnly" => true}
  @[JSON::Field(key: "password")]
  property! password : Password

  # username => {"type" => "string", "transform" => "", "description" => nil, "create" => true, "update" => false, "required" => true, "readOnCreateOnly" => false}
  @[JSON::Field(key: "username")]
  property! username : String
end
