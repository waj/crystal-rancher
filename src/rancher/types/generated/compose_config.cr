require "json"

class Rancher::ComposeConfig < Rancher::Object
  include JSON::Serializable

  # dockerComposeConfig => {"type" => "string", "description" => nil, "create" => false, "update" => false, "readOnCreateOnly" => false}
  @[JSON::Field(key: "dockerComposeConfig")]
  property! docker_compose_config : String

  # rancherComposeConfig => {"type" => "string", "description" => nil, "create" => false, "update" => false, "readOnCreateOnly" => false}
  @[JSON::Field(key: "rancherComposeConfig")]
  property! rancher_compose_config : String
end
