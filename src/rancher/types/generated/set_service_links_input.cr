require "json"

class Rancher::SetServiceLinksInput < Rancher::Object
  include JSON::Serializable

  # serviceLinks => {"type" => "array[serviceLink]", "description" => nil, "create" => true, "update" => false, "nullable" => true, "readOnCreateOnly" => false}
  @[JSON::Field(key: "serviceLinks")]
  property! service_links : Array(ServiceLink)
end
