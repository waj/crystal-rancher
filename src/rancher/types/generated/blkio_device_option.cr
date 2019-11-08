require "json"

class Rancher::BlkioDeviceOption < Rancher::Object
  include JSON::Serializable

  # readBps => {"type" => "int", "description" => nil, "create" => true, "update" => false, "nullable" => true, "readOnCreateOnly" => false}
  @[JSON::Field(key: "readBps")]
  property! read_bps : Int64

  # readIops => {"type" => "int", "description" => nil, "create" => true, "update" => false, "nullable" => true, "readOnCreateOnly" => false}
  @[JSON::Field(key: "readIops")]
  property! read_iops : Int64

  # weight => {"type" => "int", "description" => nil, "create" => true, "update" => false, "nullable" => true, "readOnCreateOnly" => false}
  @[JSON::Field(key: "weight")]
  property! weight : Int64

  # writeBps => {"type" => "int", "description" => nil, "create" => true, "update" => false, "nullable" => true, "readOnCreateOnly" => false}
  @[JSON::Field(key: "writeBps")]
  property! write_bps : Int64

  # writeIops => {"type" => "int", "description" => nil, "create" => true, "update" => false, "nullable" => true, "readOnCreateOnly" => false}
  @[JSON::Field(key: "writeIops")]
  property! write_iops : Int64
end
