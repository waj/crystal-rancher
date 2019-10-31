require "json"

class Rancher::ExtensionImplementation < Rancher::Object
  include JSON::Serializable

  # className => {"type" => "string", "description" => nil, "create" => false, "update" => false, "readOnCreateOnly" => false}
  @[JSON::Field(key: "className")]
  property! class_name : String

  # name => {"type" => "string", "description" => nil, "create" => false, "update" => false, "readOnCreateOnly" => false}
  @[JSON::Field(key: "name")]
  property! name : String

  # properties => {"type" => "map[string]", "description" => nil, "create" => false, "update" => false, "readOnCreateOnly" => false}
  # UNSUPPORTED
end
