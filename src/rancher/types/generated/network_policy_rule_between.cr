require "json"

class Rancher::NetworkPolicyRuleBetween < Rancher::Object
  include JSON::Serializable

  # groupBy => {"type" => "string", "description" => nil, "create" => true, "update" => false, "readOnCreateOnly" => false}
  @[JSON::Field(key: "groupBy")]
  property! group_by : String

  # selector => {"type" => "string", "description" => nil, "create" => true, "update" => false, "readOnCreateOnly" => false}
  @[JSON::Field(key: "selector")]
  property! selector : String
end
