require "json"

class Rancher::RevertToSnapshotInput < Rancher::Object
  include JSON::Serializable

  # snapshotId => {"type" => "reference[snapshot]", "description" => nil, "create" => true, "update" => false, "required" => true, "readOnCreateOnly" => false}
  # UNSUPPORTED
end
