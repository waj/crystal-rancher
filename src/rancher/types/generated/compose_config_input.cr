require "json"

class Rancher::ComposeConfigInput < Rancher::Object
  include JSON::Serializable

  # serviceIds => {"type" => "array[reference[service]]", "description" => nil, "create" => true, "update" => false, "nullable" => true, "readOnCreateOnly" => false}
  # UNSUPPORTED
end
