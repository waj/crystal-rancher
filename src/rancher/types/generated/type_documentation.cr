require "json"

class Rancher::TypeDocumentation < Rancher::Object
  include JSON::Serializable

  # description => {"type" => "string", "description" => nil, "create" => true, "update" => true, "readOnCreateOnly" => false}
  @[JSON::Field(key: "description")]
  property! description : String

  # resourceFields => {"type" => "map[fieldDocumentation]", "description" => nil, "create" => false, "update" => false, "readOnCreateOnly" => false}
  # UNSUPPORTED
end
