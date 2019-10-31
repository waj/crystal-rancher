require "json"

class Rancher::Identity < Rancher::Object
  include JSON::Serializable

  # all => {"type" => "string", "transform" => "", "description" => nil, "create" => true, "update" => false, "nullable" => true, "readOnCreateOnly" => false}
  @[JSON::Field(key: "all")]
  property! all : String

  # externalId => {"type" => "string", "transform" => "", "description" => nil, "create" => true, "update" => false, "required" => true, "readOnCreateOnly" => false}
  @[JSON::Field(key: "externalId")]
  property! external_id : String

  # externalIdType => {"type" => "string", "transform" => "", "description" => nil, "create" => true, "update" => false, "required" => true, "readOnCreateOnly" => false}
  @[JSON::Field(key: "externalIdType")]
  property! external_id_type : String

  # login => {"type" => "string", "transform" => "", "description" => nil, "create" => true, "update" => false, "nullable" => true, "readOnCreateOnly" => false}
  @[JSON::Field(key: "login")]
  property! login : String

  # name => {"type" => "string", "transform" => "", "description" => nil, "create" => true, "update" => false, "nullable" => true, "readOnCreateOnly" => false}
  @[JSON::Field(key: "name")]
  property! name : String

  # profilePicture => {"type" => "string", "transform" => "", "description" => nil, "create" => true, "update" => false, "nullable" => true, "readOnCreateOnly" => false}
  @[JSON::Field(key: "profilePicture")]
  property! profile_picture : String

  # profileUrl => {"type" => "string", "transform" => "", "description" => nil, "create" => true, "update" => false, "nullable" => true, "readOnCreateOnly" => false}
  @[JSON::Field(key: "profileUrl")]
  property! profile_url : String

  # projectId => {"type" => "reference[project]", "transform" => "", "description" => nil, "create" => true, "update" => false, "nullable" => true, "readOnCreateOnly" => false}
  # UNSUPPORTED

  # role => {"type" => "string", "transform" => "", "description" => nil, "create" => true, "update" => false, "nullable" => true, "readOnCreateOnly" => false}
  @[JSON::Field(key: "role")]
  property! role : String

  # user => {"type" => "boolean", "transform" => "", "description" => nil, "create" => false, "update" => false, "nullable" => true, "readOnCreateOnly" => false}
  @[JSON::Field(key: "user")]
  property! user : Bool
end
