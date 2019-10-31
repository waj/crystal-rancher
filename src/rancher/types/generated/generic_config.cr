require "json"

class Rancher::GenericConfig < Rancher::Object
  include JSON::Serializable

  # enginePort => {"type" => "string", "description" => "Docker engine port", "create" => true, "update" => false, "readOnCreateOnly" => false, "default" => "2376"}
  @[JSON::Field(key: "enginePort")]
  property! engine_port : String

  # ipAddress => {"type" => "string", "description" => "IP Address of machine", "create" => true, "update" => false, "readOnCreateOnly" => false, "default" => ""}
  @[JSON::Field(key: "ipAddress")]
  property! ip_address : String

  # sshKey => {"type" => "string", "description" => "SSH private key path (if not provided, default SSH key will be used)", "create" => true, "update" => false, "readOnCreateOnly" => false, "default" => ""}
  @[JSON::Field(key: "sshKey")]
  property! ssh_key : String

  # sshPort => {"type" => "string", "description" => "SSH port", "create" => true, "update" => false, "readOnCreateOnly" => false, "default" => "22"}
  @[JSON::Field(key: "sshPort")]
  property! ssh_port : String

  # sshUser => {"type" => "string", "description" => "SSH user", "create" => true, "update" => false, "readOnCreateOnly" => false, "default" => "root"}
  @[JSON::Field(key: "sshUser")]
  property! ssh_user : String
end
