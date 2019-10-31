require "json"

class Rancher::ExtensionPoint < Rancher::Object
  include JSON::Serializable

  # excludeSetting => {"type" => "string", "description" => nil, "create" => false, "update" => false, "readOnCreateOnly" => false}
  @[JSON::Field(key: "excludeSetting")]
  property! exclude_setting : String

  # implementations => {"type" => "array[extensionImplementation]", "description" => nil, "create" => false, "update" => false, "readOnCreateOnly" => false}
  @[JSON::Field(key: "implementations")]
  property! implementations : Array(ExtensionImplementation)

  # includeSetting => {"type" => "string", "description" => nil, "create" => false, "update" => false, "readOnCreateOnly" => false}
  @[JSON::Field(key: "includeSetting")]
  property! include_setting : String

  # listSetting => {"type" => "string", "description" => nil, "create" => false, "update" => false, "readOnCreateOnly" => false}
  @[JSON::Field(key: "listSetting")]
  property! list_setting : String

  # name => {"type" => "string", "description" => nil, "create" => true, "update" => true, "readOnCreateOnly" => false}
  @[JSON::Field(key: "name")]
  property! name : String
end
