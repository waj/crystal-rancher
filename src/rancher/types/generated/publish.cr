require "json"

class Rancher::Publish < Rancher::Object
  include JSON::Serializable

  # data => {"type" => "map[json]", "transform" => "", "description" => nil, "create" => true, "update" => false, "nullable" => true, "readOnCreateOnly" => false}
  # UNSUPPORTED

  # name => {"type" => "string", "transform" => "", "description" => nil, "create" => true, "update" => false, "required" => true, "readOnCreateOnly" => false}
  @[JSON::Field(key: "name")]
  property! name : String

  # previousIds => {"type" => "array[string]", "transform" => "", "description" => nil, "create" => true, "update" => false, "readOnCreateOnly" => false}
  @[JSON::Field(key: "previousIds")]
  property! previous_ids : Array(String)

  # publisher => {"type" => "string", "transform" => "", "description" => nil, "create" => true, "update" => false, "readOnCreateOnly" => false}
  @[JSON::Field(key: "publisher")]
  property! publisher : String

  # resourceId => {"type" => "string", "transform" => "", "description" => nil, "create" => true, "update" => false, "nullable" => true, "readOnCreateOnly" => false}
  @[JSON::Field(key: "resourceId")]
  property! resource_id : String

  # resourceType => {"type" => "string", "transform" => "", "description" => nil, "create" => true, "update" => false, "nullable" => true, "readOnCreateOnly" => false}
  @[JSON::Field(key: "resourceType")]
  property! resource_type : String

  # time => {"type" => "int", "transform" => "", "description" => nil, "create" => true, "update" => false, "nullable" => true, "readOnCreateOnly" => false}
  @[JSON::Field(key: "time")]
  property! time : Int32

  # transitioning => {"type" => "string", "transform" => "", "description" => nil, "create" => true, "update" => false, "readOnCreateOnly" => false}
  @[JSON::Field(key: "transitioning")]
  property! transitioning : String

  # transitioningInternalMessage => {"type" => "string", "transform" => "", "description" => nil, "create" => true, "update" => false, "readOnCreateOnly" => false}
  @[JSON::Field(key: "transitioningInternalMessage")]
  property! transitioning_internal_message : String

  # transitioningMessage => {"type" => "string", "transform" => "", "description" => nil, "create" => true, "update" => false, "readOnCreateOnly" => false}
  @[JSON::Field(key: "transitioningMessage")]
  property! transitioning_message : String

  # transitioningProgress => {"type" => "int", "transform" => "", "description" => nil, "create" => true, "update" => false, "nullable" => true, "readOnCreateOnly" => false}
  @[JSON::Field(key: "transitioningProgress")]
  property! transitioning_progress : Int32
end
