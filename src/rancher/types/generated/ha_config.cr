require "json"

class Rancher::HaConfig < Rancher::Object
  include JSON::Serializable

  # clusterSize => {"type" => "int", "description" => nil, "create" => false, "update" => false, "nullable" => true, "readOnCreateOnly" => false}
  @[JSON::Field(key: "clusterSize")]
  property! cluster_size : Int32

  # dbSize => {"type" => "int", "description" => nil, "create" => false, "update" => false, "nullable" => true, "readOnCreateOnly" => false}
  @[JSON::Field(key: "dbSize")]
  property! db_size : Int32

  # enabled => {"type" => "boolean", "description" => nil, "create" => false, "update" => true, "readOnCreateOnly" => false, "default" => false}
  @[JSON::Field(key: "enabled")]
  property! enabled : Bool

  # dbHost => {"type" => "string", "description" => nil, "create" => false, "update" => false, "readOnCreateOnly" => false}
  @[JSON::Field(key: "dbHost")]
  property! db_host : String
end
