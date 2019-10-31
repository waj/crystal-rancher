require "json"

class Rancher::ContainerExec < Rancher::Object
  include JSON::Serializable

  # attachStdin => {"type" => "boolean", "transform" => "", "description" => nil, "create" => true, "update" => false, "readOnCreateOnly" => false, "default" => true}
  @[JSON::Field(key: "attachStdin")]
  property! attach_stdin : Bool

  # attachStdout => {"type" => "boolean", "transform" => "", "description" => nil, "create" => true, "update" => false, "readOnCreateOnly" => false, "default" => true}
  @[JSON::Field(key: "attachStdout")]
  property! attach_stdout : Bool

  # command => {"type" => "array[string]", "transform" => "", "description" => nil, "create" => true, "update" => false, "required" => true, "readOnCreateOnly" => false}
  @[JSON::Field(key: "command")]
  property! command : Array(String)

  # tty => {"type" => "boolean", "transform" => "", "description" => nil, "create" => true, "update" => false, "readOnCreateOnly" => false, "default" => true}
  @[JSON::Field(key: "tty")]
  property! tty : Bool
end
