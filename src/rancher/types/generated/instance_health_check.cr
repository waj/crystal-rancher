require "json"

class Rancher::InstanceHealthCheck < Rancher::Object
  include JSON::Serializable

  # healthyThreshold => {"type" => "int", "description" => nil, "create" => true, "update" => false, "nullable" => true, "readOnCreateOnly" => false}
  @[JSON::Field(key: "healthyThreshold")]
  property! healthy_threshold : Int64

  # initializingTimeout => {"type" => "int", "description" => nil, "create" => true, "update" => false, "nullable" => true, "readOnCreateOnly" => false}
  @[JSON::Field(key: "initializingTimeout")]
  property! initializing_timeout : Int64

  # interval => {"type" => "int", "description" => nil, "create" => true, "update" => false, "nullable" => true, "readOnCreateOnly" => false}
  @[JSON::Field(key: "interval")]
  property! interval : Int64

  # name => {"type" => "string", "transform" => "", "description" => nil, "create" => true, "update" => true, "nullable" => true, "readOnCreateOnly" => false}
  @[JSON::Field(key: "name")]
  property! name : String

  # port => {"type" => "int", "transform" => "", "description" => nil, "create" => true, "update" => false, "nullable" => true, "required" => true, "readOnCreateOnly" => false, "min" => 1, "max" => 65535}
  @[JSON::Field(key: "port")]
  property! port : Int64

  # recreateOnQuorumStrategyConfig => {"type" => "recreateOnQuorumStrategyConfig", "transform" => "", "description" => nil, "create" => true, "update" => false, "nullable" => true, "readOnCreateOnly" => false}
  @[JSON::Field(key: "recreateOnQuorumStrategyConfig")]
  property! recreate_on_quorum_strategy_config : RecreateOnQuorumStrategyConfig

  # reinitializingTimeout => {"type" => "int", "description" => nil, "create" => true, "update" => false, "nullable" => true, "readOnCreateOnly" => false}
  @[JSON::Field(key: "reinitializingTimeout")]
  property! reinitializing_timeout : Int64

  # requestLine => {"type" => "string", "transform" => "", "description" => nil, "create" => true, "update" => false, "nullable" => true, "readOnCreateOnly" => false}
  @[JSON::Field(key: "requestLine")]
  property! request_line : String

  # responseTimeout => {"type" => "int", "description" => nil, "create" => true, "update" => false, "nullable" => true, "readOnCreateOnly" => false}
  @[JSON::Field(key: "responseTimeout")]
  property! response_timeout : Int64

  # strategy => {"type" => "enum", "transform" => "", "description" => nil, "create" => true, "update" => false, "nullable" => true, "readOnCreateOnly" => false, "options" => ["none", "recreate", "recreateOnQuorum"], "default" => "recreate"}
  @[JSON::Field(key: "strategy")]
  property! strategy : String

  # unhealthyThreshold => {"type" => "int", "description" => nil, "create" => true, "update" => false, "nullable" => true, "readOnCreateOnly" => false}
  @[JSON::Field(key: "unhealthyThreshold")]
  property! unhealthy_threshold : Int64
end
