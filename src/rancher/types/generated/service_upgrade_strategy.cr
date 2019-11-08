require "json"

class Rancher::ServiceUpgradeStrategy < Rancher::Object
  include JSON::Serializable

  # batchSize => {"type" => "int", "transform" => "", "description" => nil, "create" => true, "update" => false, "nullable" => true, "readOnCreateOnly" => false, "min" => 1, "default" => 1}
  @[JSON::Field(key: "batchSize")]
  property! batch_size : Int64

  # intervalMillis => {"type" => "int", "transform" => "", "description" => nil, "create" => true, "update" => false, "nullable" => true, "readOnCreateOnly" => false, "min" => 100, "default" => 2000}
  @[JSON::Field(key: "intervalMillis")]
  property! interval_millis : Int64
end
