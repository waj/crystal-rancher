require "json"

class Rancher::VolumeTemplate < Rancher::Object
  include JSON::Serializable

  # accountId => {"type" => "reference[account]", "description" => nil, "create" => false, "update" => false, "nullable" => true, "readOnCreateOnly" => false, "maxLength" => 255}
  # UNSUPPORTED

  # created => {"type" => "date", "description" => nil, "create" => false, "update" => false, "nullable" => true, "readOnCreateOnly" => false, "maxLength" => 255}
  @[JSON::Field(key: "created")]
  property! created : Time

  # description => {"type" => "string", "description" => nil, "create" => true, "update" => true, "nullable" => true, "readOnCreateOnly" => false, "maxLength" => 1024}
  @[JSON::Field(key: "description")]
  property! description : String

  # driver => {"type" => "string", "description" => nil, "create" => true, "update" => false, "nullable" => true, "readOnCreateOnly" => false, "maxLength" => 255}
  @[JSON::Field(key: "driver")]
  property! driver : String

  # external => {"type" => "boolean", "description" => nil, "create" => true, "update" => false, "readOnCreateOnly" => false, "maxLength" => 255}
  @[JSON::Field(key: "external")]
  property! external : Bool

  # kind => {"type" => "string", "description" => nil, "create" => false, "update" => false, "nullable" => true, "readOnCreateOnly" => false, "maxLength" => 255}
  @[JSON::Field(key: "kind")]
  property! kind : String

  # name => {"type" => "string", "description" => nil, "create" => true, "update" => true, "nullable" => true, "required" => true, "readOnCreateOnly" => false, "maxLength" => 255}
  @[JSON::Field(key: "name")]
  property! name : String

  # perContainer => {"type" => "boolean", "description" => nil, "create" => true, "update" => false, "readOnCreateOnly" => false, "maxLength" => 255}
  @[JSON::Field(key: "perContainer")]
  property! per_container : Bool

  # removed => {"type" => "date", "description" => nil, "create" => false, "update" => false, "nullable" => true, "readOnCreateOnly" => false, "maxLength" => 255}
  @[JSON::Field(key: "removed")]
  property! removed : Time

  # stackId => {"type" => "reference[stack]", "description" => nil, "create" => true, "update" => false, "required" => true, "readOnCreateOnly" => false, "maxLength" => 255}
  # UNSUPPORTED

  # state => {"type" => "enum", "description" => nil, "create" => false, "update" => false, "readOnCreateOnly" => false, "maxLength" => 128, "options" => ["activating", "active", "deactivating", "inactive", "purged", "purging", "registering", "removed", "removing", "requested", "updating-active", "updating-inactive"]}
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

  # driverOpts => {"type" => "map[string]", "description" => nil, "create" => true, "update" => false, "nullable" => true, "readOnCreateOnly" => false}
  # UNSUPPORTED
end
