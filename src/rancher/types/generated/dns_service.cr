require "json"

class Rancher::DnsService < Rancher::Object
  include JSON::Serializable

  # accountId => {"type" => "reference[account]", "description" => nil, "create" => false, "update" => false, "nullable" => true, "readOnCreateOnly" => false, "maxLength" => 255}
  # UNSUPPORTED

  # assignServiceIpAddress => {"type" => "boolean", "description" => nil, "create" => true, "update" => false, "readOnCreateOnly" => false, "default" => false}
  @[JSON::Field(key: "assignServiceIpAddress")]
  property! assign_service_ip_address : Bool

  # created => {"type" => "date", "description" => nil, "create" => false, "update" => false, "nullable" => true, "readOnCreateOnly" => false, "maxLength" => 255}
  @[JSON::Field(key: "created")]
  property! created : Time

  # description => {"type" => "string", "description" => nil, "create" => true, "update" => true, "nullable" => true, "readOnCreateOnly" => false, "maxLength" => 1024}
  @[JSON::Field(key: "description")]
  property! description : String

  # externalId => {"type" => "string", "description" => nil, "create" => true, "update" => false, "nullable" => true, "readOnCreateOnly" => false, "maxLength" => 255}
  @[JSON::Field(key: "externalId")]
  property! external_id : String

  # fqdn => {"type" => "string", "description" => nil, "create" => false, "update" => false, "nullable" => true, "readOnCreateOnly" => false}
  @[JSON::Field(key: "fqdn")]
  property! fqdn : String

  # healthState => {"type" => "string", "description" => nil, "create" => false, "update" => false, "nullable" => true, "readOnCreateOnly" => false, "maxLength" => 128}
  @[JSON::Field(key: "healthState")]
  property! health_state : String

  # instanceIds => {"type" => "array[reference[instance]]", "description" => nil, "create" => false, "update" => false, "nullable" => true, "readOnCreateOnly" => false}
  # UNSUPPORTED

  # kind => {"type" => "string", "description" => nil, "create" => false, "update" => false, "nullable" => true, "readOnCreateOnly" => false, "maxLength" => 255}
  @[JSON::Field(key: "kind")]
  property! kind : String

  # launchConfig => {"type" => "launchConfig", "description" => nil, "create" => true, "update" => false, "nullable" => true, "readOnCreateOnly" => false}
  @[JSON::Field(key: "launchConfig")]
  property! launch_config : LaunchConfig

  # linkedServices => {"type" => "map[reference[service]]", "description" => nil, "create" => false, "update" => false, "nullable" => true, "readOnCreateOnly" => false}
  # UNSUPPORTED

  # metadata => {"type" => "map[json]", "description" => nil, "create" => true, "update" => true, "nullable" => true, "readOnCreateOnly" => false}
  # UNSUPPORTED

  # name => {"type" => "string", "validChars" => "a-zA-Z0-9-", "description" => nil, "create" => true, "update" => true, "nullable" => true, "required" => true, "readOnCreateOnly" => false, "minLength" => 1, "maxLength" => 63}
  @[JSON::Field(key: "name")]
  property! name : String

  # removed => {"type" => "date", "description" => nil, "create" => false, "update" => false, "nullable" => true, "readOnCreateOnly" => false, "maxLength" => 255}
  @[JSON::Field(key: "removed")]
  property! removed : Time

  # retainIp => {"type" => "boolean", "description" => nil, "create" => true, "update" => true, "nullable" => true, "readOnCreateOnly" => false}
  @[JSON::Field(key: "retainIp")]
  property! retain_ip : Bool

  # selectorLink => {"type" => "string", "description" => nil, "create" => true, "update" => true, "nullable" => true, "readOnCreateOnly" => false, "maxLength" => 4096}
  @[JSON::Field(key: "selectorLink")]
  property! selector_link : String

  # stackId => {"type" => "reference[stack]", "description" => nil, "create" => true, "update" => false, "nullable" => true, "readOnCreateOnly" => false, "maxLength" => 255}
  # UNSUPPORTED

  # startOnCreate => {"type" => "boolean", "description" => nil, "create" => true, "update" => false, "nullable" => true, "readOnCreateOnly" => false, "default" => false}
  @[JSON::Field(key: "startOnCreate")]
  property! start_on_create : Bool

  # state => {"type" => "enum", "description" => nil, "create" => false, "update" => false, "readOnCreateOnly" => false, "maxLength" => 128, "options" => ["activating", "active", "canceled-upgrade", "canceling-upgrade", "deactivating", "finishing-upgrade", "inactive", "registering", "removed", "removing", "requested", "restarting", "rolling-back", "updating-active", "updating-inactive", "upgraded", "upgrading"]}
  @[JSON::Field(key: "state")]
  property! state : String

  # system => {"type" => "boolean", "description" => nil, "create" => false, "update" => false, "readOnCreateOnly" => false, "maxLength" => 255, "default" => false}
  @[JSON::Field(key: "system")]
  property! system : Bool

  # transitioning => {"type" => "enum", "description" => nil, "create" => false, "update" => false, "readOnCreateOnly" => false, "options" => ["yes", "no", "error"]}
  @[JSON::Field(key: "transitioning")]
  property! transitioning : String

  # transitioningMessage => {"type" => "string", "description" => nil, "create" => false, "update" => false, "nullable" => true, "readOnCreateOnly" => false}
  @[JSON::Field(key: "transitioningMessage")]
  property! transitioning_message : String

  # transitioningProgress => {"type" => "int", "description" => nil, "create" => false, "update" => false, "nullable" => true, "readOnCreateOnly" => false}
  @[JSON::Field(key: "transitioningProgress")]
  property! transitioning_progress : Int64

  # upgrade => {"type" => "serviceUpgrade", "description" => nil, "create" => false, "update" => false, "nullable" => true, "readOnCreateOnly" => false}
  @[JSON::Field(key: "upgrade")]
  property! upgrade : ServiceUpgrade

  # uuid => {"type" => "string", "description" => nil, "create" => false, "update" => false, "nullable" => true, "readOnCreateOnly" => false, "maxLength" => 128}
  @[JSON::Field(key: "uuid")]
  property! uuid : String
end
