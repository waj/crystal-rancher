require "json"

class Rancher::LoadBalancerCookieStickinessPolicy < Rancher::Object
  include JSON::Serializable

  # cookie => {"type" => "string", "description" => nil, "create" => true, "update" => true, "readOnCreateOnly" => false}
  @[JSON::Field(key: "cookie")]
  property! cookie : String

  # domain => {"type" => "string", "description" => nil, "create" => true, "update" => true, "readOnCreateOnly" => false}
  @[JSON::Field(key: "domain")]
  property! domain : String

  # indirect => {"type" => "boolean", "description" => nil, "create" => true, "update" => true, "nullable" => true, "readOnCreateOnly" => false}
  @[JSON::Field(key: "indirect")]
  property! indirect : Bool

  # mode => {"type" => "enum", "transform" => "", "description" => nil, "create" => true, "update" => true, "nullable" => true, "readOnCreateOnly" => false, "options" => ["rewrite", "insert", "prefix"], "default" => "insert"}
  @[JSON::Field(key: "mode")]
  property! mode : String

  # name => {"type" => "string", "transform" => "", "description" => nil, "create" => true, "update" => true, "nullable" => true, "readOnCreateOnly" => false}
  @[JSON::Field(key: "name")]
  property! name : String

  # nocache => {"type" => "boolean", "description" => nil, "create" => true, "update" => true, "nullable" => true, "readOnCreateOnly" => false}
  @[JSON::Field(key: "nocache")]
  property! nocache : Bool

  # postonly => {"type" => "boolean", "description" => nil, "create" => true, "update" => true, "nullable" => true, "readOnCreateOnly" => false}
  @[JSON::Field(key: "postonly")]
  property! postonly : Bool
end
