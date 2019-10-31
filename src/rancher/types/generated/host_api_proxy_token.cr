require "json"

class Rancher::HostApiProxyToken < Rancher::Object
  include JSON::Serializable

  # reportedUuid => {"type" => "string", "description" => nil, "create" => false, "update" => false, "readOnCreateOnly" => false}
  @[JSON::Field(key: "reportedUuid")]
  property! reported_uuid : String

  # token => {"type" => "string", "description" => nil, "create" => false, "update" => false, "readOnCreateOnly" => false}
  @[JSON::Field(key: "token")]
  property! token : String

  # url => {"type" => "string", "description" => nil, "create" => false, "update" => false, "readOnCreateOnly" => false}
  @[JSON::Field(key: "url")]
  property! url : String
end
