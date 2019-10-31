require "json"

class Rancher::VirtualMachineDisk < Rancher::Object
  include JSON::Serializable

  # driver => {"type" => "string", "description" => nil, "create" => true, "update" => false, "readOnCreateOnly" => false}
  @[JSON::Field(key: "driver")]
  property! driver : String

  # name => {"type" => "string", "validChars" => "a-z0-9_.-", "transform" => "", "description" => nil, "create" => true, "update" => false, "nullable" => true, "readOnCreateOnly" => false, "minLength" => 2}
  @[JSON::Field(key: "name")]
  property! name : String

  # opts => {"type" => "map[string]", "description" => nil, "create" => true, "update" => false, "readOnCreateOnly" => false}
  # UNSUPPORTED

  # readIops => {"type" => "int", "description" => nil, "create" => true, "update" => false, "nullable" => true, "readOnCreateOnly" => false}
  @[JSON::Field(key: "readIops")]
  property! read_iops : Int32

  # root => {"type" => "boolean", "description" => nil, "create" => true, "update" => false, "readOnCreateOnly" => false}
  @[JSON::Field(key: "root")]
  property! root : Bool

  # size => {"type" => "string", "transform" => "", "description" => nil, "create" => true, "update" => false, "readOnCreateOnly" => false, "default" => "40g"}
  @[JSON::Field(key: "size")]
  property! size : String

  # writeIops => {"type" => "int", "description" => nil, "create" => true, "update" => false, "nullable" => true, "readOnCreateOnly" => false}
  @[JSON::Field(key: "writeIops")]
  property! write_iops : Int32
end
