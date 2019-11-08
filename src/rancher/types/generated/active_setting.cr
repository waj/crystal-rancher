require "json"

class Rancher::ActiveSetting < Rancher::Object
  include JSON::Serializable

  # activeValue => {"type" => "json", "description" => nil, "create" => false, "update" => false, "readOnCreateOnly" => false}
  # UNSUPPORTED

  # name => {"type" => "string", "description" => nil, "create" => false, "update" => false, "readOnCreateOnly" => false}
  @[JSON::Field(key: "name")]
  property! name : String

  # value => {"type" => "string", "transform" => "", "description" => nil, "create" => false, "update" => false, "readOnCreateOnly" => false}
  @[JSON::Field(key: "value")]
  property! value : String
end
