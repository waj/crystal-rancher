require "json"

class Rancher::VolumeSnapshotInput < Rancher::Object
  include JSON::Serializable

  # name => {"type" => "string", "description" => nil, "create" => true, "update" => false, "readOnCreateOnly" => false, "maxLength" => 255}
  @[JSON::Field(key: "name")]
  property! name : String
end
