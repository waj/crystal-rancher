require "json"

class Rancher::InServiceUpgradeStrategy < Rancher::Object
  include JSON::Serializable

  # batchSize => {"type" => "int", "transform" => "", "description" => nil, "create" => true, "update" => false, "nullable" => true, "readOnCreateOnly" => false, "min" => 1, "default" => 1}
  @[JSON::Field(key: "batchSize")]
  property! batch_size : Int64

  # intervalMillis => {"type" => "int", "transform" => "", "description" => nil, "create" => true, "update" => false, "nullable" => true, "readOnCreateOnly" => false, "min" => 100, "default" => 2000}
  @[JSON::Field(key: "intervalMillis")]
  property! interval_millis : Int64

  # launchConfig => {"type" => "launchConfig", "description" => nil, "create" => true, "update" => false, "nullable" => true, "readOnCreateOnly" => false}
  @[JSON::Field(key: "launchConfig")]
  property! launch_config : LaunchConfig

  # previousLaunchConfig => {"type" => "launchConfig", "description" => nil, "create" => false, "update" => false, "nullable" => true, "readOnCreateOnly" => false}
  @[JSON::Field(key: "previousLaunchConfig")]
  property! previous_launch_config : LaunchConfig

  # previousSecondaryLaunchConfigs => {"type" => "array[secondaryLaunchConfig]", "description" => nil, "create" => false, "update" => false, "readOnCreateOnly" => false}
  @[JSON::Field(key: "previousSecondaryLaunchConfigs")]
  property! previous_secondary_launch_configs : Array(SecondaryLaunchConfig)

  # secondaryLaunchConfigs => {"type" => "array[secondaryLaunchConfig]", "description" => nil, "create" => true, "update" => false, "readOnCreateOnly" => false}
  @[JSON::Field(key: "secondaryLaunchConfigs")]
  property! secondary_launch_configs : Array(SecondaryLaunchConfig)

  # startFirst => {"type" => "boolean", "transform" => "", "description" => nil, "create" => true, "update" => false, "readOnCreateOnly" => false, "default" => false}
  @[JSON::Field(key: "startFirst")]
  property! start_first : Bool
end
