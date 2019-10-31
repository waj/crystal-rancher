require "json"

class Rancher::VolumeActivateInput < Rancher::Object
  include JSON::Serializable

  # hostId => {"type" => "reference", "transform" => "", "description" => nil, "create" => true, "update" => false, "nullable" => true, "readOnCreateOnly" => false}
  # UNSUPPORTED
end
