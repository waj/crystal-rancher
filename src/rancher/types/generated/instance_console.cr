require "json"

class Rancher::InstanceConsole < Rancher::Object
  include JSON::Serializable

  # url => {"type" => "string", "description" => nil, "create" => false, "update" => false, "readOnCreateOnly" => false}
  @[JSON::Field(key: "url")]
  property! url : String

  # kind => {"type" => "string", "description" => nil, "create" => false, "update" => false, "readOnCreateOnly" => false}
  @[JSON::Field(key: "kind")]
  property! kind : String

  # password => {"type" => "string", "description" => nil, "create" => false, "update" => false, "readOnCreateOnly" => false}
  @[JSON::Field(key: "password")]
  property! password : String
end
