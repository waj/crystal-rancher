require "json"

class Rancher::LogConfig < Rancher::Object
  include JSON::Serializable

  # config => {"type" => "map[string]", "transform" => "", "description" => nil, "create" => true, "update" => false, "nullable" => true, "readOnCreateOnly" => false}
  # UNSUPPORTED

  # driver => {"type" => "string", "transform" => "", "description" => nil, "create" => true, "update" => false, "nullable" => true, "readOnCreateOnly" => false}
  @[JSON::Field(key: "driver")]
  property! driver : String
end
