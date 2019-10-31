require "json"

class Rancher::PacketConfig < Rancher::Object
  include JSON::Serializable

  # apiKey => {"type" => "string", "description" => "Packet api key", "create" => true, "update" => false, "readOnCreateOnly" => false, "default" => ""}
  @[JSON::Field(key: "apiKey")]
  property! api_key : String

  # billingCycle => {"type" => "string", "description" => "Packet billing cycle, hourly or monthly", "create" => true, "update" => false, "readOnCreateOnly" => false, "default" => "hourly"}
  @[JSON::Field(key: "billingCycle")]
  property! billing_cycle : String

  # facilityCode => {"type" => "string", "description" => "Packet facility code", "create" => true, "update" => false, "readOnCreateOnly" => false, "default" => "ewr1"}
  @[JSON::Field(key: "facilityCode")]
  property! facility_code : String

  # os => {"type" => "string", "description" => "Packet OS, possible values are: ubuntu_14_04", "create" => true, "update" => false, "readOnCreateOnly" => false, "default" => "ubuntu_14_04"}
  @[JSON::Field(key: "os")]
  property! os : String

  # plan => {"type" => "string", "description" => "Packet Server Plan", "create" => true, "update" => false, "readOnCreateOnly" => false, "default" => "baremetal_1"}
  @[JSON::Field(key: "plan")]
  property! plan : String

  # projectId => {"type" => "string", "description" => "Packet Project Id", "create" => true, "update" => false, "readOnCreateOnly" => false, "default" => ""}
  @[JSON::Field(key: "projectId")]
  property! project_id : String
end
