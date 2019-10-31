require "json"

class Rancher::Task < Rancher::Object
  include JSON::Serializable

  # name => {"type" => "string", "description" => nil, "create" => true, "update" => true, "nullable" => true, "readOnCreateOnly" => false, "maxLength" => 128}
  @[JSON::Field(key: "name")]
  property! name : String
end
