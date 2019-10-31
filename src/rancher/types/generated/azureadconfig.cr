require "json"

class Rancher::Azureadconfig < Rancher::Object
  include JSON::Serializable

  # accessMode => {"type" => "string", "transform" => "", "description" => nil, "create" => true, "update" => false, "required" => true, "readOnCreateOnly" => false, "default" => "unrestricted"}
  @[JSON::Field(key: "accessMode")]
  property! access_mode : String

  # adminAccountPassword => {"type" => "string", "transform" => "", "description" => nil, "create" => true, "update" => false, "nullable" => true, "readOnCreateOnly" => true, "minLength" => 1}
  @[JSON::Field(key: "adminAccountPassword")]
  property! admin_account_password : String

  # adminAccountUsername => {"type" => "string", "transform" => "", "description" => nil, "create" => true, "update" => false, "nullable" => true, "readOnCreateOnly" => false, "minLength" => 1}
  @[JSON::Field(key: "adminAccountUsername")]
  property! admin_account_username : String

  # clientId => {"type" => "string", "transform" => "", "description" => nil, "create" => true, "update" => false, "nullable" => true, "readOnCreateOnly" => false}
  @[JSON::Field(key: "clientId")]
  property! client_id : String

  # domain => {"type" => "string", "transform" => "", "description" => nil, "create" => true, "update" => false, "nullable" => true, "readOnCreateOnly" => false}
  @[JSON::Field(key: "domain")]
  property! domain : String

  # enabled => {"type" => "boolean", "transform" => "", "description" => nil, "create" => true, "update" => false, "nullable" => true, "readOnCreateOnly" => false}
  @[JSON::Field(key: "enabled")]
  property! enabled : Bool

  # name => {"type" => "string", "description" => nil, "create" => true, "update" => true, "readOnCreateOnly" => false}
  @[JSON::Field(key: "name")]
  property! name : String

  # tenantId => {"type" => "string", "transform" => "", "description" => nil, "create" => true, "update" => false, "nullable" => true, "readOnCreateOnly" => false}
  @[JSON::Field(key: "tenantId")]
  property! tenant_id : String
end
