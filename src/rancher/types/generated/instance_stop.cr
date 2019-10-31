require "json"

class Rancher::InstanceStop < Rancher::Object
  include JSON::Serializable

  # remove => {"type" => "boolean", "description" => nil, "create" => true, "update" => false, "readOnCreateOnly" => false}
  @[JSON::Field(key: "remove")]
  property! remove : Bool

  # timeout => {"type" => "int", "description" => nil, "create" => true, "update" => false, "readOnCreateOnly" => false}
  @[JSON::Field(key: "timeout")]
  property! timeout : Int32
end
