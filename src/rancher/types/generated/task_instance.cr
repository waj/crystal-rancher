require "json"

class Rancher::TaskInstance < Rancher::Object
  include JSON::Serializable

  # endTime => {"type" => "date", "description" => nil, "create" => false, "update" => false, "nullable" => true, "readOnCreateOnly" => false, "maxLength" => 255}
  @[JSON::Field(key: "endTime")]
  property! end_time : Time

  # exception => {"type" => "string", "description" => nil, "create" => false, "update" => false, "nullable" => true, "readOnCreateOnly" => false, "maxLength" => 255}
  @[JSON::Field(key: "exception")]
  property! exception : String

  # name => {"type" => "string", "description" => nil, "create" => true, "update" => true, "nullable" => true, "readOnCreateOnly" => false, "maxLength" => 128}
  @[JSON::Field(key: "name")]
  property! name : String

  # serverId => {"type" => "string", "description" => nil, "create" => false, "update" => false, "nullable" => true, "readOnCreateOnly" => false, "maxLength" => 128}
  @[JSON::Field(key: "serverId")]
  property! server_id : String

  # startTime => {"type" => "date", "description" => nil, "create" => false, "update" => false, "readOnCreateOnly" => false, "maxLength" => 255}
  @[JSON::Field(key: "startTime")]
  property! start_time : Time

  # taskId => {"type" => "reference[task]", "description" => nil, "create" => false, "update" => false, "readOnCreateOnly" => false, "maxLength" => 255}
  # UNSUPPORTED
end
