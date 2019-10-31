require "json"

class Rancher::ExternalHandlerProcessConfig < Rancher::Object
  include JSON::Serializable

  # name => {"type" => "string", "description" => nil, "create" => true, "update" => false, "readOnCreateOnly" => false}
  @[JSON::Field(key: "name")]
  property! name : String

  # onError => {"type" => "string", "description" => nil, "create" => true, "update" => false, "readOnCreateOnly" => false}
  @[JSON::Field(key: "onError")]
  property! on_error : String
end
