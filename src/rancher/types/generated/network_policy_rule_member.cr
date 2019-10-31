require "json"

class Rancher::NetworkPolicyRuleMember < Rancher::Object
  include JSON::Serializable

  # selector => {"type" => "string", "description" => nil, "create" => true, "update" => false, "readOnCreateOnly" => false}
  @[JSON::Field(key: "selector")]
  property! selector : String
end
