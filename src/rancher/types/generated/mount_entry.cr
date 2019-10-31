require "json"

class Rancher::MountEntry < Rancher::Object
  include JSON::Serializable

  # instanceId => {"type" => "reference[instance]", "transform" => "", "description" => nil, "create" => false, "update" => false, "readOnCreateOnly" => false}
  # UNSUPPORTED

  # instanceName => {"type" => "string", "description" => nil, "create" => false, "update" => false, "readOnCreateOnly" => false}
  @[JSON::Field(key: "instanceName")]
  property! instance_name : String

  # path => {"type" => "string", "description" => nil, "create" => false, "update" => false, "readOnCreateOnly" => false}
  @[JSON::Field(key: "path")]
  property! path : String

  # volumeId => {"type" => "reference[volume]", "transform" => "", "description" => nil, "create" => false, "update" => false, "readOnCreateOnly" => false}
  # UNSUPPORTED

  # volumeName => {"type" => "string", "description" => nil, "create" => false, "update" => false, "readOnCreateOnly" => false}
  @[JSON::Field(key: "volumeName")]
  property! volume_name : String
end
