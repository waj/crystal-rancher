require "json"

class Rancher::ConfigItemStatus < Rancher::Object
  include JSON::Serializable

  # accountId => {"type" => "reference[account]", "description" => nil, "create" => false, "update" => false, "nullable" => true, "readOnCreateOnly" => false, "maxLength" => 255}
  # UNSUPPORTED

  # agentId => {"type" => "reference[agent]", "description" => nil, "create" => false, "update" => false, "nullable" => true, "readOnCreateOnly" => false, "maxLength" => 255}
  # UNSUPPORTED

  # appliedUpdated => {"type" => "date", "description" => nil, "create" => false, "update" => false, "nullable" => true, "readOnCreateOnly" => false, "maxLength" => 255}
  @[JSON::Field(key: "appliedUpdated")]
  property! applied_updated : Time

  # appliedVersion => {"type" => "int", "description" => nil, "create" => false, "update" => true, "readOnCreateOnly" => false, "maxLength" => 255}
  @[JSON::Field(key: "appliedVersion")]
  property! applied_version : Int32

  # name => {"type" => "string", "description" => nil, "create" => true, "update" => true, "nullable" => true, "readOnCreateOnly" => false, "maxLength" => 255}
  @[JSON::Field(key: "name")]
  property! name : String

  # requestedUpdated => {"type" => "date", "description" => nil, "create" => false, "update" => false, "readOnCreateOnly" => false, "maxLength" => 255}
  @[JSON::Field(key: "requestedUpdated")]
  property! requested_updated : Time

  # requestedVersion => {"type" => "int", "description" => nil, "create" => false, "update" => false, "readOnCreateOnly" => false, "maxLength" => 255}
  @[JSON::Field(key: "requestedVersion")]
  property! requested_version : Int32

  # sourceVersion => {"type" => "string", "description" => nil, "create" => false, "update" => false, "nullable" => true, "readOnCreateOnly" => false, "maxLength" => 255}
  @[JSON::Field(key: "sourceVersion")]
  property! source_version : String
end
