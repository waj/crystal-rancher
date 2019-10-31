require "json"

class Rancher::ServiceLink < Rancher::Object
  include JSON::Serializable

  # name => {"type" => "string", "validChars" => "a-zA-Z0-9-._", "description" => nil, "create" => true, "update" => false, "nullable" => true, "readOnCreateOnly" => false}
  @[JSON::Field(key: "name")]
  property! name : String

  # service => {"type" => "string", "description" => nil, "create" => true, "update" => false, "readOnCreateOnly" => false}
  @[JSON::Field(key: "service")]
  property! service : String

  # serviceId => {"type" => "reference[service]", "description" => nil, "create" => true, "update" => false, "readOnCreateOnly" => false}
  # UNSUPPORTED

  # uuid => {"type" => "string", "description" => nil, "create" => false, "update" => false, "readOnCreateOnly" => false}
  @[JSON::Field(key: "uuid")]
  property! uuid : String
end
