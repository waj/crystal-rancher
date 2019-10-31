require "json"

class Rancher::DigitaloceanConfig < Rancher::Object
  include JSON::Serializable

  # accessToken => {"type" => "string", "description" => "Digital Ocean access token", "create" => true, "update" => false, "readOnCreateOnly" => false, "default" => ""}
  @[JSON::Field(key: "accessToken")]
  property! access_token : String

  # backups => {"type" => "boolean", "description" => "enable backups for droplet", "create" => true, "update" => false, "readOnCreateOnly" => false}
  @[JSON::Field(key: "backups")]
  property! backups : Bool

  # image => {"type" => "string", "description" => "Digital Ocean Image", "create" => true, "update" => false, "readOnCreateOnly" => false, "default" => "ubuntu-16-04-x64"}
  @[JSON::Field(key: "image")]
  property! image : String

  # ipv6 => {"type" => "boolean", "description" => "enable ipv6 for droplet", "create" => true, "update" => false, "readOnCreateOnly" => false}
  @[JSON::Field(key: "ipv6")]
  property! ipv6 : Bool

  # monitoring => {"type" => "boolean", "description" => "enable monitoring for droplet", "create" => true, "update" => false, "readOnCreateOnly" => false}
  @[JSON::Field(key: "monitoring")]
  property! monitoring : Bool

  # privateNetworking => {"type" => "boolean", "description" => "enable private networking for droplet", "create" => true, "update" => false, "readOnCreateOnly" => false}
  @[JSON::Field(key: "privateNetworking")]
  property! private_networking : Bool

  # region => {"type" => "string", "description" => "Digital Ocean region", "create" => true, "update" => false, "readOnCreateOnly" => false, "default" => "nyc3"}
  @[JSON::Field(key: "region")]
  property! region : String

  # size => {"type" => "string", "description" => "Digital Ocean size", "create" => true, "update" => false, "readOnCreateOnly" => false, "default" => "s-1vcpu-1gb"}
  @[JSON::Field(key: "size")]
  property! size : String

  # sshKeyFingerprint => {"type" => "string", "description" => "SSH key fingerprint", "create" => true, "update" => false, "readOnCreateOnly" => false, "default" => ""}
  @[JSON::Field(key: "sshKeyFingerprint")]
  property! ssh_key_fingerprint : String

  # sshKeyPath => {"type" => "string", "description" => "SSH private key path ", "create" => true, "update" => false, "readOnCreateOnly" => false, "default" => ""}
  @[JSON::Field(key: "sshKeyPath")]
  property! ssh_key_path : String

  # sshPort => {"type" => "string", "description" => "SSH port", "create" => true, "update" => false, "readOnCreateOnly" => false, "default" => "22"}
  @[JSON::Field(key: "sshPort")]
  property! ssh_port : String

  # sshUser => {"type" => "string", "description" => "SSH username", "create" => true, "update" => false, "readOnCreateOnly" => false, "default" => "root"}
  @[JSON::Field(key: "sshUser")]
  property! ssh_user : String

  # tags => {"type" => "string", "description" => "comma-separated list of tags to apply to the Droplet", "create" => true, "update" => false, "readOnCreateOnly" => false, "default" => ""}
  @[JSON::Field(key: "tags")]
  property! tags : String

  # userdata => {"type" => "string", "description" => "path to file with cloud-init user-data", "create" => true, "update" => false, "readOnCreateOnly" => false, "default" => ""}
  @[JSON::Field(key: "userdata")]
  property! userdata : String
end
