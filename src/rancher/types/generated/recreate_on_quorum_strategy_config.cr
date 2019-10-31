require "json"

class Rancher::RecreateOnQuorumStrategyConfig < Rancher::Object
  include JSON::Serializable

  # quorum => {"type" => "int", "transform" => "", "description" => nil, "create" => true, "update" => false, "nullable" => true, "required" => true, "readOnCreateOnly" => false}
  @[JSON::Field(key: "quorum")]
  property! quorum : Int32
end
