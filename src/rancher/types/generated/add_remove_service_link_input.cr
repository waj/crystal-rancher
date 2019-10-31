require "json"

class Rancher::AddRemoveServiceLinkInput < Rancher::Object
  include JSON::Serializable

  # serviceLink => {"type" => "serviceLink", "description" => nil, "create" => true, "update" => false, "required" => true, "readOnCreateOnly" => false}
  @[JSON::Field(key: "serviceLink")]
  property! service_link : ServiceLink
end
