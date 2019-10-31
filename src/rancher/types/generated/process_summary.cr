require "json"

class Rancher::ProcessSummary < Rancher::Object
  include JSON::Serializable

  # delay => {"type" => "int", "description" => nil, "create" => false, "update" => false, "readOnCreateOnly" => false}
  @[JSON::Field(key: "delay")]
  property! delay : Int32

  # processName => {"type" => "string", "description" => nil, "create" => false, "update" => false, "readOnCreateOnly" => false}
  @[JSON::Field(key: "processName")]
  property! process_name : String

  # ready => {"type" => "int", "description" => nil, "create" => false, "update" => false, "readOnCreateOnly" => false}
  @[JSON::Field(key: "ready")]
  property! ready : Int32

  # running => {"type" => "int", "description" => nil, "create" => false, "update" => false, "readOnCreateOnly" => false}
  @[JSON::Field(key: "running")]
  property! running : Int32
end
