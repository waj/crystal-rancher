require "json"

class Rancher::SnapshotBackupInput < Rancher::Object
  include JSON::Serializable

  # backupTargetId => {"type" => "reference[backupTarget]", "description" => nil, "create" => true, "update" => false, "required" => true, "readOnCreateOnly" => false, "maxLength" => 255}
  # UNSUPPORTED

  # name => {"type" => "string", "description" => nil, "create" => true, "update" => false, "nullable" => true, "readOnCreateOnly" => false, "maxLength" => 255}
  @[JSON::Field(key: "name")]
  property! name : String
end
