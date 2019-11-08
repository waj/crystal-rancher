require "json"

class Rancher::Service < Rancher::Object
  include JSON::Serializable

  # accountId => {"type" => "reference[account]", "description" => nil, "create" => false, "update" => false, "nullable" => true, "readOnCreateOnly" => false, "maxLength" => 255}
  # UNSUPPORTED

  # createIndex => {"type" => "int", "description" => nil, "create" => false, "update" => false, "nullable" => true, "readOnCreateOnly" => false, "maxLength" => 255}
  @[JSON::Field(key: "createIndex")]
  property! create_index : Int64

  # created => {"type" => "date", "description" => nil, "create" => false, "update" => false, "nullable" => true, "readOnCreateOnly" => false, "maxLength" => 255}
  @[JSON::Field(key: "created")]
  property! created : Time

  # description => {"type" => "string", "description" => nil, "create" => true, "update" => true, "nullable" => true, "readOnCreateOnly" => false, "maxLength" => 1024}
  @[JSON::Field(key: "description")]
  property! description : String

  # externalId => {"type" => "string", "description" => nil, "create" => true, "update" => false, "nullable" => true, "readOnCreateOnly" => false, "maxLength" => 255}
  @[JSON::Field(key: "externalId")]
  property! external_id : String

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

  # selectorContainer => {"type" => "string", "description" => nil, "create" => true, "update" => true, "nullable" => true, "readOnCreateOnly" => false, "maxLength" => 4096}
  @[JSON::Field(key: "selectorContainer")]
  property! selector_container : String

  # selectorLink => {"type" => "string", "description" => nil, "create" => true, "update" => true, "nullable" => true, "readOnCreateOnly" => false, "maxLength" => 4096}
  @[JSON::Field(key: "selectorLink")]
  property! selector_link : String

  # stackId => {"type" => "reference[stack]", "description" => nil, "create" => true, "update" => false, "nullable" => true, "readOnCreateOnly" => false, "maxLength" => 255}
  # UNSUPPORTED

  # state => {"type" => "enum", "description" => nil, "create" => false, "update" => false, "readOnCreateOnly" => false, "maxLength" => 128, "options" => ["activating", "active", "canceled-upgrade", "canceling-upgrade", "deactivating", "finishing-upgrade", "inactive", "registering", "removed", "removing", "requested", "restarting", "rolling-back", "updating-active", "updating-inactive", "upgraded", "upgrading"]}
  @[JSON::Field(key: "state")]
  property! state : String

  # system => {"type" => "boolean", "description" => nil, "create" => false, "update" => false, "readOnCreateOnly" => false, "maxLength" => 255, "default" => false}
  @[JSON::Field(key: "system")]
  property! system : Bool

  # uuid => {"type" => "string", "description" => nil, "create" => false, "update" => false, "nullable" => true, "readOnCreateOnly" => false, "maxLength" => 128}
  @[JSON::Field(key: "uuid")]
  property! uuid : String

  # vip => {"type" => "string", "description" => nil, "create" => true, "update" => false, "nullable" => true, "readOnCreateOnly" => false, "maxLength" => 255}
  @[JSON::Field(key: "vip")]
  property! vip : String

  # transitioning => {"type" => "enum", "description" => nil, "create" => false, "update" => false, "readOnCreateOnly" => false, "options" => ["yes", "no", "error"]}
  @[JSON::Field(key: "transitioning")]
  property! transitioning : String

  # transitioningMessage => {"type" => "string", "description" => nil, "create" => false, "update" => false, "nullable" => true, "readOnCreateOnly" => false}
  @[JSON::Field(key: "transitioningMessage")]
  property! transitioning_message : String

  # transitioningProgress => {"type" => "int", "description" => nil, "create" => false, "update" => false, "nullable" => true, "readOnCreateOnly" => false}
  @[JSON::Field(key: "transitioningProgress")]
  property! transitioning_progress : Int64

  # scale => {"type" => "int", "description" => nil, "create" => true, "update" => true, "readOnCreateOnly" => false, "min" => 0, "default" => 1}
  @[JSON::Field(key: "scale")]
  property! scale : Int64

  # currentScale => {"type" => "int", "description" => nil, "create" => false, "update" => false, "readOnCreateOnly" => false}
  @[JSON::Field(key: "currentScale")]
  property! current_scale : Int64

  # scalePolicy => {"type" => "scalePolicy", "description" => nil, "create" => true, "update" => true, "nullable" => true, "readOnCreateOnly" => false}
  @[JSON::Field(key: "scalePolicy")]
  property! scale_policy : ScalePolicy

  # launchConfig => {"type" => "launchConfig", "description" => nil, "create" => true, "update" => false, "nullable" => true, "readOnCreateOnly" => false}
  @[JSON::Field(key: "launchConfig")]
  property! launch_config : LaunchConfig

  # upgrade => {"type" => "serviceUpgrade", "description" => nil, "create" => false, "update" => false, "nullable" => true, "readOnCreateOnly" => false}
  @[JSON::Field(key: "upgrade")]
  property! upgrade : ServiceUpgrade

  # secondaryLaunchConfigs => {"type" => "array[secondaryLaunchConfig]", "description" => nil, "create" => true, "update" => false, "readOnCreateOnly" => false}
  @[JSON::Field(key: "secondaryLaunchConfigs")]
  property! secondary_launch_configs : Array(SecondaryLaunchConfig)

  # metadata => {"type" => "map[json]", "description" => nil, "create" => true, "update" => true, "nullable" => true, "readOnCreateOnly" => false}
  # UNSUPPORTED

  # fqdn => {"type" => "string", "description" => nil, "create" => false, "update" => false, "nullable" => true, "readOnCreateOnly" => false}
  @[JSON::Field(key: "fqdn")]
  property! fqdn : String

  # publicEndpoints => {"type" => "array[publicEndpoint]", "description" => nil, "create" => true, "update" => true, "nullable" => true, "readOnCreateOnly" => false}
  @[JSON::Field(key: "publicEndpoints")]
  property! public_endpoints : Array(PublicEndpoint)

  # retainIp => {"type" => "boolean", "description" => nil, "create" => true, "update" => true, "nullable" => true, "readOnCreateOnly" => false}
  @[JSON::Field(key: "retainIp")]
  property! retain_ip : Bool

  # assignServiceIpAddress => {"type" => "boolean", "description" => nil, "create" => true, "update" => false, "readOnCreateOnly" => false, "default" => false}
  @[JSON::Field(key: "assignServiceIpAddress")]
  property! assign_service_ip_address : Bool

  # startOnCreate => {"type" => "boolean", "description" => nil, "create" => true, "update" => false, "nullable" => true, "readOnCreateOnly" => false, "default" => false}
  @[JSON::Field(key: "startOnCreate")]
  property! start_on_create : Bool

  # linkedServices => {"type" => "map[reference[service]]", "description" => nil, "create" => false, "update" => false, "nullable" => true, "readOnCreateOnly" => false}
  # UNSUPPORTED

  # instanceIds => {"type" => "array[reference[instance]]", "description" => nil, "create" => false, "update" => false, "nullable" => true, "readOnCreateOnly" => false}
  # UNSUPPORTED

  # lbConfig => {"type" => "lbTargetConfig", "description" => nil, "create" => true, "update" => true, "nullable" => true, "readOnCreateOnly" => false}
  @[JSON::Field(key: "lbConfig")]
  property! lb_config : LbTargetConfig
end
