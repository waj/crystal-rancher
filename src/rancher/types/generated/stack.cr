require "json"

class Rancher::Stack < Rancher::Object
  include JSON::Serializable

  # accountId => {"type" => "reference[account]", "description" => nil, "create" => false, "update" => false, "nullable" => true, "readOnCreateOnly" => false, "maxLength" => 255}
  # UNSUPPORTED

  # created => {"type" => "date", "description" => nil, "create" => false, "update" => false, "nullable" => true, "readOnCreateOnly" => false, "maxLength" => 255}
  @[JSON::Field(key: "created")]
  property! created : Time

  # description => {"type" => "string", "description" => nil, "create" => true, "update" => true, "nullable" => true, "readOnCreateOnly" => false, "maxLength" => 1024}
  @[JSON::Field(key: "description")]
  property! description : String

  # externalId => {"type" => "string", "description" => nil, "create" => true, "update" => true, "nullable" => true, "readOnCreateOnly" => false, "maxLength" => 128}
  @[JSON::Field(key: "externalId")]
  property! external_id : String

  # group => {"type" => "string", "description" => nil, "create" => true, "update" => true, "nullable" => true, "readOnCreateOnly" => false, "maxLength" => 255}
  @[JSON::Field(key: "group")]
  property! group : String

  # healthState => {"type" => "string", "description" => nil, "create" => false, "update" => false, "nullable" => true, "readOnCreateOnly" => false, "maxLength" => 128}
  @[JSON::Field(key: "healthState")]
  property! health_state : String

  # kind => {"type" => "string", "description" => nil, "create" => false, "update" => false, "nullable" => true, "readOnCreateOnly" => false, "maxLength" => 255}
  @[JSON::Field(key: "kind")]
  property! kind : String

  # name => {"type" => "string", "validChars" => "a-zA-Z0-9-", "description" => nil, "create" => true, "update" => true, "nullable" => true, "required" => true, "readOnCreateOnly" => false, "minLength" => 1, "maxLength" => 63}
  @[JSON::Field(key: "name")]
  property! name : String

  # removed => {"type" => "date", "description" => nil, "create" => false, "update" => false, "nullable" => true, "readOnCreateOnly" => false, "maxLength" => 255}
  @[JSON::Field(key: "removed")]
  property! removed : Time

  # state => {"type" => "enum", "description" => nil, "create" => false, "update" => false, "readOnCreateOnly" => false, "maxLength" => 128, "options" => ["activating", "active", "canceled-upgrade", "canceling-upgrade", "error", "erroring", "finishing-upgrade", "removed", "removing", "requested", "rolling-back", "updating-active", "upgraded", "upgrading"]}
  @[JSON::Field(key: "state")]
  property! state : String

  # system => {"type" => "boolean", "description" => nil, "create" => false, "update" => false, "readOnCreateOnly" => false, "maxLength" => 255, "default" => false}
  @[JSON::Field(key: "system")]
  property! system : Bool

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

  # dockerCompose => {"type" => "string", "description" => nil, "create" => true, "update" => false, "readOnCreateOnly" => false}
  @[JSON::Field(key: "dockerCompose")]
  property! docker_compose : String

  # rancherCompose => {"type" => "string", "description" => nil, "create" => true, "update" => false, "readOnCreateOnly" => false}
  @[JSON::Field(key: "rancherCompose")]
  property! rancher_compose : String

  # environment => {"type" => "map[string]", "description" => nil, "create" => true, "update" => false, "readOnCreateOnly" => false}
  # UNSUPPORTED

  # answers => {"type" => "map[json]", "description" => nil, "create" => true, "update" => false, "readOnCreateOnly" => false}
  # UNSUPPORTED

  # templates => {"type" => "map[string]", "description" => nil, "create" => true, "update" => false, "nullable" => true, "readOnCreateOnly" => false}
  # UNSUPPORTED

  # previousExternalId => {"type" => "string", "description" => nil, "create" => true, "update" => true, "nullable" => true, "readOnCreateOnly" => false}
  @[JSON::Field(key: "previousExternalId")]
  property! previous_external_id : String

  # previousEnvironment => {"type" => "map[string]", "description" => nil, "create" => true, "update" => true, "nullable" => true, "readOnCreateOnly" => false}
  # UNSUPPORTED

  # startOnCreate => {"type" => "boolean", "description" => nil, "create" => true, "update" => false, "nullable" => true, "readOnCreateOnly" => false}
  @[JSON::Field(key: "startOnCreate")]
  property! start_on_create : Bool

  # outputs => {"type" => "map[string]", "description" => nil, "create" => true, "update" => true, "nullable" => true, "readOnCreateOnly" => false}
  # UNSUPPORTED

  # binding => {"type" => "binding", "description" => nil, "create" => true, "update" => true, "nullable" => true, "readOnCreateOnly" => false}
  @[JSON::Field(key: "binding")]
  property! binding : Binding

  # serviceIds => {"type" => "array[reference[service]]", "description" => nil, "create" => false, "update" => false, "nullable" => true, "readOnCreateOnly" => false}
  # UNSUPPORTED
end
