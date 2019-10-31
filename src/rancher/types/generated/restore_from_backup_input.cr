require "json"

class Rancher::RestoreFromBackupInput < Rancher::Object
  include JSON::Serializable

  # backupId => {"type" => "reference[backup]", "description" => nil, "create" => true, "update" => false, "required" => true, "readOnCreateOnly" => false}
  # UNSUPPORTED
end
