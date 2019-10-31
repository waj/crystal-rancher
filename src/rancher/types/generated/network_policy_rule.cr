require "json"

class Rancher::NetworkPolicyRule < Rancher::Object
  include JSON::Serializable

  # action => {"type" => "enum", "description" => nil, "create" => true, "update" => false, "readOnCreateOnly" => false, "options" => ["allow", "deny"]}
  @[JSON::Field(key: "action")]
  property! action : String

  # between => {"type" => "networkPolicyRuleBetween", "description" => nil, "create" => true, "update" => false, "readOnCreateOnly" => false}
  @[JSON::Field(key: "between")]
  property! between : NetworkPolicyRuleBetween

  # from => {"type" => "networkPolicyRuleMember", "description" => nil, "create" => true, "update" => false, "readOnCreateOnly" => false}
  @[JSON::Field(key: "from")]
  property! from : NetworkPolicyRuleMember

  # ports => {"type" => "array[string]", "description" => nil, "create" => true, "update" => false, "readOnCreateOnly" => false}
  @[JSON::Field(key: "ports")]
  property! ports : Array(String)

  # to => {"type" => "networkPolicyRuleMember", "description" => nil, "create" => true, "update" => false, "readOnCreateOnly" => false}
  @[JSON::Field(key: "to")]
  property! to : NetworkPolicyRuleMember

  # within => {"type" => "enum", "description" => nil, "create" => true, "update" => false, "readOnCreateOnly" => false, "options" => ["stack", "service", "linked"]}
  @[JSON::Field(key: "within")]
  property! within : String
end
