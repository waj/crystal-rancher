require "json"

class Rancher::FieldDocumentation < Rancher::Object
  include JSON::Serializable

  # description => {"type" => "string", "description" => nil, "create" => true, "update" => true, "readOnCreateOnly" => false}
  @[JSON::Field(key: "description")]
  property! description : String
end
