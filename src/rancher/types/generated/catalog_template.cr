require "json"

class Rancher::CatalogTemplate < Rancher::Object
  include JSON::Serializable

  # answers => {"type" => "map[json]", "description" => nil, "create" => true, "update" => false, "readOnCreateOnly" => false}
  # UNSUPPORTED

  # binding => {"type" => "binding", "transform" => "", "description" => nil, "create" => true, "update" => false, "readOnCreateOnly" => false}
  @[JSON::Field(key: "binding")]
  property! binding : Binding

  # description => {"type" => "string", "description" => nil, "create" => true, "update" => false, "readOnCreateOnly" => false}
  @[JSON::Field(key: "description")]
  property! description : String

  # dockerCompose => {"type" => "string", "description" => nil, "create" => true, "update" => false, "readOnCreateOnly" => false}
  @[JSON::Field(key: "dockerCompose")]
  property! docker_compose : String

  # name => {"type" => "string", "description" => nil, "create" => true, "update" => false, "readOnCreateOnly" => false}
  @[JSON::Field(key: "name")]
  property! name : String

  # rancherCompose => {"type" => "string", "description" => nil, "create" => true, "update" => false, "readOnCreateOnly" => false}
  @[JSON::Field(key: "rancherCompose")]
  property! rancher_compose : String

  # templateId => {"type" => "string", "description" => nil, "create" => true, "update" => false, "readOnCreateOnly" => false}
  @[JSON::Field(key: "templateId")]
  property! template_id : String

  # templateVersionId => {"type" => "string", "description" => nil, "create" => true, "update" => false, "readOnCreateOnly" => false}
  @[JSON::Field(key: "templateVersionId")]
  property! template_version_id : String
end
