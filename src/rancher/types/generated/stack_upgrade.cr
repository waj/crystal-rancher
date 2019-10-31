require "json"

class Rancher::StackUpgrade < Rancher::Object
  include JSON::Serializable

  # dockerCompose => {"type" => "string", "description" => nil, "create" => true, "update" => false, "readOnCreateOnly" => false}
  @[JSON::Field(key: "dockerCompose")]
  property! docker_compose : String

  # rancherCompose => {"type" => "string", "description" => nil, "create" => true, "update" => false, "readOnCreateOnly" => false}
  @[JSON::Field(key: "rancherCompose")]
  property! rancher_compose : String

  # externalId => {"type" => "string", "description" => nil, "create" => true, "update" => false, "readOnCreateOnly" => false}
  @[JSON::Field(key: "externalId")]
  property! external_id : String

  # environment => {"type" => "map[string]", "description" => nil, "create" => true, "update" => false, "readOnCreateOnly" => false}
  # UNSUPPORTED

  # answers => {"type" => "map[json]", "description" => nil, "create" => true, "update" => false, "readOnCreateOnly" => false}
  # UNSUPPORTED

  # templates => {"type" => "map[string]", "description" => nil, "create" => true, "update" => false, "readOnCreateOnly" => false}
  # UNSUPPORTED
end
