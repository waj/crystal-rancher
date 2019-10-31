require "json"

class Rancher::ActiveSetting < Rancher::Object
  include JSON::Serializable

  # activeValue => {"type" => "json", "description" => nil, "create" => false, "update" => false, "readOnCreateOnly" => false}
  # UNSUPPORTED

  # inDb => {"type" => "boolean", "description" => nil, "create" => false, "update" => false, "readOnCreateOnly" => false}
  @[JSON::Field(key: "inDb")]
  property! in_db : Bool

  # name => {"type" => "string", "description" => nil, "create" => false, "update" => false, "readOnCreateOnly" => false}
  @[JSON::Field(key: "name")]
  property! name : String

  # source => {"type" => "string", "description" => nil, "create" => false, "update" => false, "readOnCreateOnly" => false}
  @[JSON::Field(key: "source")]
  property! source : String

  # value => {"type" => "string", "transform" => "", "description" => nil, "create" => false, "update" => true, "readOnCreateOnly" => false}
  @[JSON::Field(key: "value")]
  property! value : String
end
