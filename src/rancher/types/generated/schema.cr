require "json"

class Rancher::Schema < Rancher::Object
  include JSON::Serializable

  # collectionActions => {"type" => "map[json]", "description" => nil, "create" => true, "update" => false, "readOnCreateOnly" => false}
  # UNSUPPORTED

  # collectionFields => {"type" => "map[json]", "description" => nil, "create" => true, "update" => false, "readOnCreateOnly" => false}
  # UNSUPPORTED

  # collectionFilters => {"type" => "map[json]", "description" => nil, "create" => true, "update" => false, "readOnCreateOnly" => false}
  # UNSUPPORTED

  # collectionMethods => {"type" => "array[string]", "description" => nil, "create" => true, "update" => false, "readOnCreateOnly" => false}
  @[JSON::Field(key: "collectionMethods")]
  property! collection_methods : Array(String)

  # includeableLinks => {"type" => "array[string]", "description" => nil, "create" => true, "update" => false, "readOnCreateOnly" => false}
  @[JSON::Field(key: "includeableLinks")]
  property! includeable_links : Array(String)

  # pluralName => {"type" => "string", "description" => nil, "create" => true, "update" => false, "readOnCreateOnly" => false}
  @[JSON::Field(key: "pluralName")]
  property! plural_name : String

  # resourceActions => {"type" => "map[json]", "description" => nil, "create" => true, "update" => false, "readOnCreateOnly" => false}
  # UNSUPPORTED

  # resourceFields => {"type" => "map[json]", "description" => nil, "create" => true, "update" => false, "readOnCreateOnly" => false}
  # UNSUPPORTED

  # resourceMethods => {"type" => "array[string]", "description" => nil, "create" => true, "update" => false, "readOnCreateOnly" => false}
  @[JSON::Field(key: "resourceMethods")]
  property! resource_methods : Array(String)
end
