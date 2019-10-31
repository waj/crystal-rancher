require "json"

class Rancher::NfsConfig < Rancher::Object
  include JSON::Serializable

  # server => {"type" => "string", "description" => nil, "create" => true, "update" => false, "required" => true, "readOnCreateOnly" => false}
  @[JSON::Field(key: "server")]
  property! server : String

  # share => {"type" => "string", "description" => nil, "create" => true, "update" => false, "required" => true, "readOnCreateOnly" => false}
  @[JSON::Field(key: "share")]
  property! share : String

  # mountOptions => {"type" => "string", "description" => nil, "create" => true, "update" => false, "nullable" => true, "readOnCreateOnly" => false}
  @[JSON::Field(key: "mountOptions")]
  property! mount_options : String
end
