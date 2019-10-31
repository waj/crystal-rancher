require "json"

class Rancher::HaConfigInput < Rancher::Object
  include JSON::Serializable

  # cert => {"type" => "string", "transform" => "", "description" => nil, "create" => true, "update" => false, "nullable" => true, "readOnCreateOnly" => false}
  @[JSON::Field(key: "cert")]
  property! cert : String

  # certChain => {"type" => "string", "transform" => "", "description" => nil, "create" => true, "update" => false, "nullable" => true, "readOnCreateOnly" => false}
  @[JSON::Field(key: "certChain")]
  property! cert_chain : String

  # clusterSize => {"type" => "int", "transform" => "", "description" => nil, "create" => true, "update" => false, "readOnCreateOnly" => false, "min" => 1, "max" => 65535, "default" => 3}
  @[JSON::Field(key: "clusterSize")]
  property! cluster_size : Int32

  # hostRegistrationUrl => {"type" => "string", "transform" => "", "description" => nil, "create" => true, "update" => false, "required" => true, "readOnCreateOnly" => false}
  @[JSON::Field(key: "hostRegistrationUrl")]
  property! host_registration_url : String

  # httpEnabled => {"type" => "boolean", "transform" => "", "description" => nil, "create" => true, "update" => false, "readOnCreateOnly" => false, "default" => true}
  @[JSON::Field(key: "httpEnabled")]
  property! http_enabled : Bool

  # httpPort => {"type" => "int", "transform" => "", "description" => nil, "create" => true, "update" => false, "nullable" => true, "readOnCreateOnly" => false, "min" => 1, "max" => 65535, "default" => 80}
  @[JSON::Field(key: "httpPort")]
  property! http_port : Int32

  # httpsPort => {"type" => "int", "transform" => "", "description" => nil, "create" => true, "update" => false, "readOnCreateOnly" => false, "min" => 1, "max" => 65535, "default" => 443}
  @[JSON::Field(key: "httpsPort")]
  property! https_port : Int32

  # key => {"type" => "string", "transform" => "", "description" => nil, "create" => true, "update" => false, "nullable" => true, "readOnCreateOnly" => false}
  @[JSON::Field(key: "key")]
  property! key : String

  # ppHttpPort => {"type" => "int", "transform" => "", "description" => nil, "create" => true, "update" => false, "nullable" => true, "readOnCreateOnly" => false, "min" => 1, "max" => 65535, "default" => 81}
  @[JSON::Field(key: "ppHttpPort")]
  property! pp_http_port : Int32

  # ppHttpsPort => {"type" => "int", "transform" => "", "description" => nil, "create" => true, "update" => false, "readOnCreateOnly" => false, "min" => 1, "max" => 65535, "default" => 444}
  @[JSON::Field(key: "ppHttpsPort")]
  property! pp_https_port : Int32

  # redisPort => {"type" => "int", "transform" => "", "description" => nil, "create" => true, "update" => false, "readOnCreateOnly" => false, "min" => 1, "max" => 65535, "default" => 6379}
  @[JSON::Field(key: "redisPort")]
  property! redis_port : Int32

  # swarmEnabled => {"type" => "boolean", "transform" => "", "description" => nil, "create" => true, "update" => false, "readOnCreateOnly" => false, "default" => true}
  @[JSON::Field(key: "swarmEnabled")]
  property! swarm_enabled : Bool

  # swarmPort => {"type" => "int", "transform" => "", "description" => nil, "create" => true, "update" => false, "nullable" => true, "readOnCreateOnly" => false, "min" => 1, "max" => 65535, "default" => 2376}
  @[JSON::Field(key: "swarmPort")]
  property! swarm_port : Int32

  # zookeeperClientPort => {"type" => "int", "transform" => "", "description" => nil, "create" => true, "update" => false, "readOnCreateOnly" => false, "min" => 1, "max" => 65535, "default" => 2181}
  @[JSON::Field(key: "zookeeperClientPort")]
  property! zookeeper_client_port : Int32

  # zookeeperLeaderPort => {"type" => "int", "transform" => "", "description" => nil, "create" => true, "update" => false, "readOnCreateOnly" => false, "min" => 1, "max" => 65535, "default" => 3888}
  @[JSON::Field(key: "zookeeperLeaderPort")]
  property! zookeeper_leader_port : Int32

  # zookeeperQuorumPort => {"type" => "int", "transform" => "", "description" => nil, "create" => true, "update" => false, "readOnCreateOnly" => false, "min" => 1, "max" => 65535, "default" => 2888}
  @[JSON::Field(key: "zookeeperQuorumPort")]
  property! zookeeper_quorum_port : Int32
end
