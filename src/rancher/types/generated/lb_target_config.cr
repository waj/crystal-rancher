require "json"

class Rancher::LbTargetConfig < Rancher::Object
  include JSON::Serializable

  # portRules => {"type" => "array[targetPortRule]", "description" => nil, "create" => true, "update" => true, "readOnCreateOnly" => false}
  @[JSON::Field(key: "portRules")]
  property! port_rules : Array(TargetPortRule)
end
