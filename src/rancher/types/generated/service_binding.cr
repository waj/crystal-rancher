require "json"

class Rancher::ServiceBinding < Rancher::Object
  include JSON::Serializable

  # labels => {"type" => "map[string]", "description" => nil, "create" => true, "update" => false, "readOnCreateOnly" => false}
  # UNSUPPORTED

  # ports => {"type" => "array[string]", "description" => nil, "create" => true, "update" => false, "readOnCreateOnly" => false}
  @[JSON::Field(key: "ports")]
  property! ports : Array(String)
end
