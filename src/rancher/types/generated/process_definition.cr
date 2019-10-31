require "json"

class Rancher::ProcessDefinition < Rancher::Object
  include JSON::Serializable

  # extensionBased => {"type" => "boolean", "description" => nil, "create" => false, "update" => false, "readOnCreateOnly" => false}
  @[JSON::Field(key: "extensionBased")]
  property! extension_based : Bool

  # name => {"type" => "string", "description" => nil, "create" => true, "update" => true, "readOnCreateOnly" => false}
  @[JSON::Field(key: "name")]
  property! name : String

  # postProcessListeners => {"type" => "extensionPoint", "description" => nil, "create" => false, "update" => false, "readOnCreateOnly" => false}
  @[JSON::Field(key: "postProcessListeners")]
  property! post_process_listeners : ExtensionPoint

  # preProcessListeners => {"type" => "extensionPoint", "description" => nil, "create" => false, "update" => false, "readOnCreateOnly" => false}
  @[JSON::Field(key: "preProcessListeners")]
  property! pre_process_listeners : ExtensionPoint

  # processHandlers => {"type" => "extensionPoint", "description" => nil, "create" => false, "update" => false, "readOnCreateOnly" => false}
  @[JSON::Field(key: "processHandlers")]
  property! process_handlers : ExtensionPoint

  # resourceType => {"type" => "string", "description" => nil, "create" => false, "update" => false, "readOnCreateOnly" => false}
  @[JSON::Field(key: "resourceType")]
  property! resource_type : String

  # stateTransitions => {"type" => "array[stateTransition]", "description" => nil, "create" => false, "update" => false, "readOnCreateOnly" => false}
  @[JSON::Field(key: "stateTransitions")]
  property! state_transitions : Array(StateTransition)
end
