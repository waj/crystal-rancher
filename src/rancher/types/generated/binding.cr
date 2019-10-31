require "json"

class Rancher::Binding < Rancher::Object
  include JSON::Serializable

  # services => {"type" => "map[serviceBinding]", "description" => nil, "create" => true, "update" => false, "readOnCreateOnly" => false}
  # UNSUPPORTED
end
