require "json"

class Rancher::MachineDriver < Rancher::Object
  include JSON::Serializable

  # created => {"type" => "date", "description" => nil, "create" => false, "update" => false, "nullable" => true, "readOnCreateOnly" => false, "maxLength" => 255}
  @[JSON::Field(key: "created")]
  property! created : Time

  # description => {"type" => "string", "description" => nil, "create" => true, "update" => true, "nullable" => true, "readOnCreateOnly" => false, "maxLength" => 1024}
  @[JSON::Field(key: "description")]
  property! description : String

  # kind => {"type" => "string", "description" => nil, "create" => false, "update" => false, "nullable" => true, "readOnCreateOnly" => false, "maxLength" => 255}
  @[JSON::Field(key: "kind")]
  property! kind : String

  # name => {"type" => "string", "description" => nil, "create" => false, "update" => false, "nullable" => true, "readOnCreateOnly" => false, "maxLength" => 255}
  @[JSON::Field(key: "name")]
  property! name : String

  # removed => {"type" => "date", "description" => nil, "create" => false, "update" => false, "nullable" => true, "readOnCreateOnly" => false, "maxLength" => 255}
  @[JSON::Field(key: "removed")]
  property! removed : Time

  # state => {"type" => "enum", "description" => nil, "create" => false, "update" => false, "readOnCreateOnly" => false, "maxLength" => 128, "options" => ["activating", "active", "deactivating", "error", "erroring", "inactive", "registering", "removed", "removing", "requested", "updating-active", "updating-inactive"]}
  @[JSON::Field(key: "state")]
  property! state : String

  # uuid => {"type" => "string", "description" => nil, "create" => false, "update" => false, "nullable" => true, "readOnCreateOnly" => false, "maxLength" => 128}
  @[JSON::Field(key: "uuid")]
  property! uuid : String

  # transitioning => {"type" => "enum", "description" => nil, "create" => false, "update" => false, "readOnCreateOnly" => false, "options" => ["yes", "no", "error"]}
  @[JSON::Field(key: "transitioning")]
  property! transitioning : String

  # transitioningMessage => {"type" => "string", "description" => nil, "create" => false, "update" => false, "nullable" => true, "readOnCreateOnly" => false}
  @[JSON::Field(key: "transitioningMessage")]
  property! transitioning_message : String

  # transitioningProgress => {"type" => "int", "description" => nil, "create" => false, "update" => false, "nullable" => true, "readOnCreateOnly" => false}
  @[JSON::Field(key: "transitioningProgress")]
  property! transitioning_progress : Int64

  # url => {"type" => "string", "description" => nil, "create" => true, "update" => true, "required" => true, "readOnCreateOnly" => false}
  @[JSON::Field(key: "url")]
  property! url : String

  # externalId => {"type" => "string", "description" => nil, "create" => true, "update" => true, "nullable" => true, "readOnCreateOnly" => false}
  @[JSON::Field(key: "externalId")]
  property! external_id : String

  # builtin => {"type" => "boolean", "description" => nil, "create" => true, "update" => false, "readOnCreateOnly" => false}
  @[JSON::Field(key: "builtin")]
  property! builtin : Bool

  # defaultActive => {"type" => "boolean", "description" => nil, "create" => false, "update" => false, "readOnCreateOnly" => false}
  @[JSON::Field(key: "defaultActive")]
  property! default_active : Bool

  # activateOnCreate => {"type" => "boolean", "description" => nil, "create" => true, "update" => false, "readOnCreateOnly" => false}
  @[JSON::Field(key: "activateOnCreate")]
  property! activate_on_create : Bool

  # checksum => {"type" => "string", "description" => nil, "create" => true, "update" => true, "nullable" => true, "readOnCreateOnly" => false}
  @[JSON::Field(key: "checksum")]
  property! checksum : String

  # uiUrl => {"type" => "string", "description" => nil, "create" => true, "update" => true, "nullable" => true, "readOnCreateOnly" => false}
  @[JSON::Field(key: "uiUrl")]
  property! ui_url : String
end
