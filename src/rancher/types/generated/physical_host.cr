require "json"

class Rancher::PhysicalHost < Rancher::Object
  include JSON::Serializable

  # accountId => {"type" => "reference[account]", "description" => nil, "create" => false, "update" => false, "nullable" => true, "readOnCreateOnly" => false, "maxLength" => 255}
  # UNSUPPORTED

  # created => {"type" => "date", "description" => nil, "create" => false, "update" => false, "nullable" => true, "readOnCreateOnly" => false, "maxLength" => 255}
  @[JSON::Field(key: "created")]
  property! created : Time

  # data => {"type" => "map[json]", "description" => nil, "create" => false, "update" => false, "nullable" => true, "readOnCreateOnly" => false, "maxLength" => 16777215}
  # UNSUPPORTED

  # description => {"type" => "string", "description" => nil, "create" => true, "update" => true, "nullable" => true, "readOnCreateOnly" => false, "maxLength" => 1024}
  @[JSON::Field(key: "description")]
  property! description : String

  # driver => {"type" => "string", "description" => nil, "create" => false, "update" => false, "nullable" => true, "readOnCreateOnly" => false, "maxLength" => 128}
  @[JSON::Field(key: "driver")]
  property! driver : String

  # externalId => {"type" => "string", "description" => nil, "create" => false, "update" => false, "nullable" => true, "readOnCreateOnly" => false, "maxLength" => 128}
  @[JSON::Field(key: "externalId")]
  property! external_id : String

  # kind => {"type" => "string", "description" => nil, "create" => false, "update" => false, "nullable" => true, "readOnCreateOnly" => false, "maxLength" => 255}
  @[JSON::Field(key: "kind")]
  property! kind : String

  # name => {"type" => "string", "description" => nil, "create" => true, "update" => true, "nullable" => true, "readOnCreateOnly" => false, "maxLength" => 255}
  @[JSON::Field(key: "name")]
  property! name : String

  # removeTime => {"type" => "date", "description" => nil, "create" => false, "update" => false, "nullable" => true, "readOnCreateOnly" => false, "maxLength" => 255}
  @[JSON::Field(key: "removeTime")]
  property! remove_time : Time

  # removed => {"type" => "date", "description" => nil, "create" => false, "update" => false, "nullable" => true, "readOnCreateOnly" => false, "maxLength" => 255}
  @[JSON::Field(key: "removed")]
  property! removed : Time

  # state => {"type" => "enum", "description" => nil, "create" => false, "update" => false, "readOnCreateOnly" => false, "maxLength" => 128, "options" => ["active", "bootstrapping", "created", "creating", "error", "erroring", "removed", "removing", "requested", "updating"]}
  @[JSON::Field(key: "state")]
  property! state : String

  # uuid => {"type" => "string", "description" => nil, "create" => false, "update" => false, "nullable" => true, "readOnCreateOnly" => false, "maxLength" => 128}
  @[JSON::Field(key: "uuid")]
  property! uuid : String

  # transitioning => {"type" => "enum", "description" => nil, "create" => false, "update" => false, "readOnCreateOnly" => false, "options" => ["yes", "no", "error"]}
  @[JSON::Field(key: "transitioning")]
  property! transitioning : String

  # transitioningMessage => {"type" => "string", "description" => nil, "create" => false, "update" => false, "nullable" => true, "readOnCreateOnly" => false}
  @[JSON::Field(key: "transitioningMessage")]
  property! transitioning_message : String

  # transitioningProgress => {"type" => "int", "description" => nil, "create" => false, "update" => false, "nullable" => true, "readOnCreateOnly" => false}
  @[JSON::Field(key: "transitioningProgress")]
  property! transitioning_progress : Int32
end
