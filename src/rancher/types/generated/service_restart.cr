require "json"

class Rancher::ServiceRestart < Rancher::Object
  include JSON::Serializable

  # rollingRestartStrategy => {"type" => "rollingRestartStrategy", "transform" => "", "description" => nil, "create" => true, "update" => false, "required" => true, "readOnCreateOnly" => false}
  @[JSON::Field(key: "rollingRestartStrategy")]
  property! rolling_restart_strategy : RollingRestartStrategy
end
