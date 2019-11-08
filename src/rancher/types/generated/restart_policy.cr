require "json"

class Rancher::RestartPolicy < Rancher::Object
  include JSON::Serializable

  # maximumRetryCount => {"type" => "int", "description" => nil, "create" => true, "update" => false, "readOnCreateOnly" => false}
  @[JSON::Field(key: "maximumRetryCount")]
  property! maximum_retry_count : Int64

  # name => {"type" => "string", "description" => nil, "create" => true, "update" => true, "readOnCreateOnly" => false}
  @[JSON::Field(key: "name")]
  property! name : String
end
