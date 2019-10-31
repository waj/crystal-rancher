require "json"

class Rancher::Openldapconfig < Rancher::Object
  include JSON::Serializable

  # accessMode => {"type" => "string", "transform" => "", "description" => nil, "create" => true, "update" => false, "required" => true, "readOnCreateOnly" => false, "default" => "unrestricted"}
  @[JSON::Field(key: "accessMode")]
  property! access_mode : String

  # allowedIdentities => {"type" => "array[identity]", "description" => nil, "create" => true, "update" => false, "readOnCreateOnly" => false}
  @[JSON::Field(key: "allowedIdentities")]
  property! allowed_identities : Array(Identity)

  # connectionTimeout => {"type" => "int", "transform" => "", "description" => nil, "create" => true, "update" => false, "required" => true, "readOnCreateOnly" => false, "default" => 1000}
  @[JSON::Field(key: "connectionTimeout")]
  property! connection_timeout : Int32

  # domain => {"type" => "string", "transform" => "", "description" => nil, "create" => true, "update" => false, "required" => true, "readOnCreateOnly" => false, "minLength" => 1}
  @[JSON::Field(key: "domain")]
  property! domain : String

  # enabled => {"type" => "boolean", "transform" => "", "description" => nil, "create" => true, "update" => false, "nullable" => true, "readOnCreateOnly" => false}
  @[JSON::Field(key: "enabled")]
  property! enabled : Bool

  # groupDNField => {"type" => "string", "transform" => "", "description" => nil, "create" => true, "update" => false, "readOnCreateOnly" => false, "default" => "entryDN"}
  @[JSON::Field(key: "groupDNField")]
  property! group_dn_field : String

  # groupMemberMappingAttribute => {"type" => "string", "transform" => "", "description" => nil, "create" => true, "update" => false, "required" => true, "readOnCreateOnly" => false, "default" => "memberUid"}
  @[JSON::Field(key: "groupMemberMappingAttribute")]
  property! group_member_mapping_attribute : String

  # groupMemberUserAttribute => {"type" => "string", "transform" => "", "description" => nil, "create" => true, "update" => false, "readOnCreateOnly" => false, "default" => "entryDN"}
  @[JSON::Field(key: "groupMemberUserAttribute")]
  property! group_member_user_attribute : String

  # groupNameField => {"type" => "string", "transform" => "", "description" => nil, "create" => true, "update" => false, "required" => true, "readOnCreateOnly" => false, "default" => "cn"}
  @[JSON::Field(key: "groupNameField")]
  property! group_name_field : String

  # groupObjectClass => {"type" => "string", "transform" => "", "description" => nil, "create" => true, "update" => false, "required" => true, "readOnCreateOnly" => false, "default" => "posixGroup"}
  @[JSON::Field(key: "groupObjectClass")]
  property! group_object_class : String

  # groupSearchDomain => {"type" => "string", "transform" => "", "description" => nil, "create" => true, "update" => false, "nullable" => true, "readOnCreateOnly" => false}
  @[JSON::Field(key: "groupSearchDomain")]
  property! group_search_domain : String

  # groupSearchField => {"type" => "string", "transform" => "", "description" => nil, "create" => true, "update" => false, "required" => true, "readOnCreateOnly" => false, "default" => "cn"}
  @[JSON::Field(key: "groupSearchField")]
  property! group_search_field : String

  # loginDomain => {"type" => "string", "transform" => "", "description" => nil, "create" => true, "update" => false, "nullable" => true, "readOnCreateOnly" => false}
  @[JSON::Field(key: "loginDomain")]
  property! login_domain : String

  # name => {"type" => "string", "description" => nil, "create" => false, "update" => false, "readOnCreateOnly" => false}
  @[JSON::Field(key: "name")]
  property! name : String

  # port => {"type" => "int", "transform" => "", "description" => nil, "create" => true, "update" => false, "nullable" => true, "required" => true, "readOnCreateOnly" => false, "default" => 389}
  @[JSON::Field(key: "port")]
  property! port : Int32

  # server => {"type" => "string", "transform" => "", "description" => nil, "create" => true, "update" => false, "required" => true, "readOnCreateOnly" => false, "minLength" => 1}
  @[JSON::Field(key: "server")]
  property! server : String

  # serviceAccountPassword => {"type" => "string", "transform" => "", "description" => nil, "create" => true, "update" => false, "nullable" => true, "required" => true, "readOnCreateOnly" => true, "minLength" => 1}
  @[JSON::Field(key: "serviceAccountPassword")]
  property! service_account_password : String

  # serviceAccountUsername => {"type" => "string", "transform" => "", "description" => nil, "create" => true, "update" => false, "nullable" => true, "required" => true, "readOnCreateOnly" => false, "minLength" => 1}
  @[JSON::Field(key: "serviceAccountUsername")]
  property! service_account_username : String

  # tls => {"type" => "boolean", "transform" => "", "description" => nil, "create" => true, "update" => false, "nullable" => true, "required" => true, "readOnCreateOnly" => false}
  @[JSON::Field(key: "tls")]
  property! tls : Bool

  # userDisabledBitMask => {"type" => "int", "transform" => "", "description" => nil, "create" => true, "update" => false, "nullable" => true, "readOnCreateOnly" => false}
  @[JSON::Field(key: "userDisabledBitMask")]
  property! user_disabled_bit_mask : Int32

  # userEnabledAttribute => {"type" => "string", "transform" => "", "description" => nil, "create" => true, "update" => false, "nullable" => true, "readOnCreateOnly" => false}
  @[JSON::Field(key: "userEnabledAttribute")]
  property! user_enabled_attribute : String

  # userLoginField => {"type" => "string", "transform" => "", "description" => nil, "create" => true, "update" => false, "required" => true, "readOnCreateOnly" => false, "default" => "uid"}
  @[JSON::Field(key: "userLoginField")]
  property! user_login_field : String

  # userMemberAttribute => {"type" => "string", "transform" => "", "description" => nil, "create" => true, "update" => false, "required" => true, "readOnCreateOnly" => false, "default" => "memberOf"}
  @[JSON::Field(key: "userMemberAttribute")]
  property! user_member_attribute : String

  # userNameField => {"type" => "string", "transform" => "", "description" => nil, "create" => true, "update" => false, "required" => true, "readOnCreateOnly" => false, "default" => "givenName"}
  @[JSON::Field(key: "userNameField")]
  property! user_name_field : String

  # userObjectClass => {"type" => "string", "transform" => "", "description" => nil, "create" => true, "update" => false, "required" => true, "readOnCreateOnly" => false, "default" => "inetOrgPerson"}
  @[JSON::Field(key: "userObjectClass")]
  property! user_object_class : String

  # userSearchField => {"type" => "string", "transform" => "", "description" => nil, "create" => true, "update" => false, "required" => true, "readOnCreateOnly" => false, "default" => "uid"}
  @[JSON::Field(key: "userSearchField")]
  property! user_search_field : String
end
