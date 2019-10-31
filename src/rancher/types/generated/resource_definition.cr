require "json"

class Rancher::ResourceDefinition < Rancher::Object
  include JSON::Serializable

  # name => {"type" => "string", "description" => nil, "create" => false, "update" => false, "readOnCreateOnly" => false}
  @[JSON::Field(key: "name")]
  property! name : String
end
