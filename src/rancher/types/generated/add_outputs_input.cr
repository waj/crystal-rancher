require "json"

class Rancher::AddOutputsInput < Rancher::Object
  include JSON::Serializable

  # outputs => {"type" => "map[string]", "description" => nil, "create" => true, "update" => false, "required" => true, "readOnCreateOnly" => false}
  # UNSUPPORTED
end
