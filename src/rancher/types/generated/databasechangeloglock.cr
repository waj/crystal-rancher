require "json"

class Rancher::Databasechangeloglock < Rancher::Object
  include JSON::Serializable

  # locked => {"type" => "boolean", "description" => nil, "create" => false, "update" => false, "readOnCreateOnly" => false, "maxLength" => 255}
  @[JSON::Field(key: "locked")]
  property! locked : Bool

  # lockedby => {"type" => "string", "description" => nil, "create" => false, "update" => false, "nullable" => true, "readOnCreateOnly" => false, "maxLength" => 255}
  @[JSON::Field(key: "lockedby")]
  property! lockedby : String

  # lockgranted => {"type" => "date", "description" => nil, "create" => false, "update" => false, "nullable" => true, "readOnCreateOnly" => false, "maxLength" => 255}
  @[JSON::Field(key: "lockgranted")]
  property! lockgranted : Time
end
