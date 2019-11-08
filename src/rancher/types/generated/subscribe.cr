require "json"

class Rancher::Subscribe < Rancher::Object
  include JSON::Serializable

  # eventNames => {"type" => "array[string]", "validChars" => "*._0-9a-zA-Z;=", "transform" => "", "description" => nil, "create" => true, "update" => false, "readOnCreateOnly" => false, "minLength" => 1}
  @[JSON::Field(key: "eventNames")]
  property! event_names : Array(String)
end
