require "json"

class Rancher::ScalePolicy < Rancher::Object
  include JSON::Serializable

  # increment => {"type" => "int", "transform" => "", "description" => nil, "create" => true, "update" => false, "nullable" => true, "readOnCreateOnly" => false, "min" => 1, "default" => 1}
  @[JSON::Field(key: "increment")]
  property! increment : Int32

  # max => {"type" => "int", "transform" => "", "description" => nil, "create" => true, "update" => false, "nullable" => true, "readOnCreateOnly" => false, "min" => 1, "default" => 1}
  @[JSON::Field(key: "max")]
  property! max : Int32

  # min => {"type" => "int", "transform" => "", "description" => nil, "create" => true, "update" => false, "nullable" => true, "required" => true, "readOnCreateOnly" => false, "min" => 1, "default" => 1}
  @[JSON::Field(key: "min")]
  property! min : Int32
end
