require "json"

class Rancher::ServiceUpgrade < Rancher::Object
  include JSON::Serializable

  # inServiceStrategy => {"type" => "inServiceUpgradeStrategy", "transform" => "", "description" => nil, "create" => true, "update" => false, "nullable" => true, "readOnCreateOnly" => false}
  @[JSON::Field(key: "inServiceStrategy")]
  property! in_service_strategy : InServiceUpgradeStrategy

  # toServiceStrategy => {"type" => "toServiceUpgradeStrategy", "transform" => "", "description" => nil, "create" => true, "update" => false, "nullable" => true, "readOnCreateOnly" => false}
  @[JSON::Field(key: "toServiceStrategy")]
  property! to_service_strategy : ToServiceUpgradeStrategy
end
