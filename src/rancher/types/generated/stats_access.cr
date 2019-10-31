require "json"

class Rancher::StatsAccess < Rancher::Object
  include JSON::Serializable

  # token => {"type" => "string", "description" => nil, "create" => false, "update" => false, "readOnCreateOnly" => false}
  @[JSON::Field(key: "token")]
  property! token : String

  # url => {"type" => "string", "description" => nil, "create" => false, "update" => false, "readOnCreateOnly" => false}
  @[JSON::Field(key: "url")]
  property! url : String
end
