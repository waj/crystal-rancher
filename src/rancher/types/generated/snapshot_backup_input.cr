require "json"

class Rancher::SnapshotBackupInput < Rancher::Object
  include JSON::Serializable

  # backupTargetId => {"type" => "reference[backupTarget]", "description" => nil, "create" => true, "update" => false, "required" => true, "readOnCreateOnly" => false, "maxLength" => 255}
  # UNSUPPORTED

  # data => {"type" => "map[json]", "description" => nil, "create" => false, "update" => false, "nullable" => true, "readOnCreateOnly" => false, "maxLength" => 65535}
  # UNSUPPORTED

  # name => {"type" => "string", "description" => nil, "create" => true, "update" => false, "nullable" => true, "readOnCreateOnly" => false, "maxLength" => 255}
  @[JSON::Field(key: "name")]
  property! name : String

  # removeTime => {"type" => "date", "description" => nil, "create" => false, "update" => false, "nullable" => true, "readOnCreateOnly" => false, "maxLength" => 255}
  @[JSON::Field(key: "removeTime")]
  property! remove_time : Time
end
