require "json"

class Rancher::Machine < Rancher::Object
  include JSON::Serializable

  # accountId => {"type" => "reference[account]", "description" => nil, "create" => false, "update" => false, "nullable" => true, "readOnCreateOnly" => false, "maxLength" => 255}
  # UNSUPPORTED

  # created => {"type" => "date", "description" => nil, "create" => false, "update" => false, "nullable" => true, "readOnCreateOnly" => false, "maxLength" => 255}
  @[JSON::Field(key: "created")]
  property! created : Time

  # description => {"type" => "string", "description" => nil, "create" => true, "update" => true, "nullable" => true, "readOnCreateOnly" => false, "maxLength" => 1024}
  @[JSON::Field(key: "description")]
  property! description : String

  # driver => {"type" => "string", "description" => nil, "create" => false, "update" => false, "nullable" => true, "readOnCreateOnly" => false}
  @[JSON::Field(key: "driver")]
  property! driver : String

  # externalId => {"type" => "string", "description" => nil, "create" => false, "update" => false, "nullable" => true, "readOnCreateOnly" => false, "maxLength" => 128}
  @[JSON::Field(key: "externalId")]
  property! external_id : String

  # kind => {"type" => "string", "description" => nil, "create" => false, "update" => false, "nullable" => true, "readOnCreateOnly" => false, "maxLength" => 255}
  @[JSON::Field(key: "kind")]
  property! kind : String

  # name => {"type" => "string", "description" => nil, "create" => true, "update" => true, "nullable" => true, "readOnCreateOnly" => false}
  @[JSON::Field(key: "name")]
  property! name : String

  # removed => {"type" => "date", "description" => nil, "create" => false, "update" => false, "nullable" => true, "readOnCreateOnly" => false, "maxLength" => 255}
  @[JSON::Field(key: "removed")]
  property! removed : Time

  # state => {"type" => "enum", "description" => nil, "create" => false, "update" => false, "readOnCreateOnly" => false, "maxLength" => 128, "options" => ["active", "bootstrapping", "created", "creating", "error", "erroring", "removed", "removing", "requested", "updating"]}
  @[JSON::Field(key: "state")]
  property! state : String

  # uuid => {"type" => "string", "description" => nil, "create" => false, "update" => false, "nullable" => true, "readOnCreateOnly" => false, "maxLength" => 128}
  @[JSON::Field(key: "uuid")]
  property! uuid : String

  # transitioning => {"type" => "enum", "description" => nil, "create" => false, "update" => false, "readOnCreateOnly" => false, "options" => ["yes", "no", "error"]}
  @[JSON::Field(key: "transitioning")]
  property! transitioning : String

  # transitioningMessage => {"type" => "string", "description" => nil, "create" => false, "update" => false, "nullable" => true, "readOnCreateOnly" => false}
  @[JSON::Field(key: "transitioningMessage")]
  property! transitioning_message : String

  # transitioningProgress => {"type" => "int", "description" => nil, "create" => false, "update" => false, "nullable" => true, "readOnCreateOnly" => false}
  @[JSON::Field(key: "transitioningProgress")]
  property! transitioning_progress : Int64

  # amazonec2Config => {"type" => "amazonec2Config", "description" => nil, "create" => true, "update" => true, "nullable" => true, "readOnCreateOnly" => false}
  @[JSON::Field(key: "amazonec2Config")]
  property! amazonec2_config : Amazonec2Config

  # authCertificateAuthority => {"type" => "string", "description" => nil, "create" => true, "update" => true, "nullable" => true, "readOnCreateOnly" => false}
  @[JSON::Field(key: "authCertificateAuthority")]
  property! auth_certificate_authority : String

  # authKey => {"type" => "string", "description" => nil, "create" => true, "update" => true, "nullable" => true, "readOnCreateOnly" => false}
  @[JSON::Field(key: "authKey")]
  property! auth_key : String

  # azureConfig => {"type" => "azureConfig", "description" => nil, "create" => true, "update" => true, "nullable" => true, "readOnCreateOnly" => false}
  @[JSON::Field(key: "azureConfig")]
  property! azure_config : AzureConfig

  # digitaloceanConfig => {"type" => "digitaloceanConfig", "description" => nil, "create" => true, "update" => true, "nullable" => true, "readOnCreateOnly" => false}
  @[JSON::Field(key: "digitaloceanConfig")]
  property! digitalocean_config : DigitaloceanConfig

  # dockerVersion => {"type" => "string", "description" => nil, "create" => true, "update" => true, "nullable" => true, "readOnCreateOnly" => false}
  @[JSON::Field(key: "dockerVersion")]
  property! docker_version : String

  # engineEnv => {"type" => "map[string]", "description" => nil, "create" => true, "update" => true, "nullable" => true, "readOnCreateOnly" => false}
  # UNSUPPORTED

  # engineInsecureRegistry => {"type" => "array[string]", "description" => nil, "create" => true, "update" => true, "nullable" => true, "readOnCreateOnly" => false}
  @[JSON::Field(key: "engineInsecureRegistry")]
  property! engine_insecure_registry : Array(String)

  # engineInstallUrl => {"type" => "string", "description" => nil, "create" => true, "update" => true, "nullable" => true, "readOnCreateOnly" => false}
  @[JSON::Field(key: "engineInstallUrl")]
  property! engine_install_url : String

  # engineLabel => {"type" => "map[string]", "description" => nil, "create" => true, "update" => true, "nullable" => true, "readOnCreateOnly" => false}
  # UNSUPPORTED

  # engineOpt => {"type" => "map[string]", "description" => nil, "create" => true, "update" => true, "nullable" => true, "readOnCreateOnly" => false}
  # UNSUPPORTED

  # engineRegistryMirror => {"type" => "array[string]", "description" => nil, "create" => true, "update" => true, "nullable" => true, "readOnCreateOnly" => false}
  @[JSON::Field(key: "engineRegistryMirror")]
  property! engine_registry_mirror : Array(String)

  # engineStorageDriver => {"type" => "string", "description" => nil, "create" => true, "update" => true, "nullable" => true, "readOnCreateOnly" => false}
  @[JSON::Field(key: "engineStorageDriver")]
  property! engine_storage_driver : String

  # genericConfig => {"type" => "genericConfig", "description" => nil, "create" => true, "update" => true, "nullable" => true, "readOnCreateOnly" => false}
  @[JSON::Field(key: "genericConfig")]
  property! generic_config : GenericConfig

  # hostTemplateId => {"type" => "reference[hostTemplate]", "description" => nil, "create" => true, "update" => false, "nullable" => true, "readOnCreateOnly" => false}
  # UNSUPPORTED

  # labels => {"type" => "map[string]", "description" => nil, "create" => true, "update" => true, "nullable" => true, "readOnCreateOnly" => false}
  # UNSUPPORTED

  # packetConfig => {"type" => "packetConfig", "description" => nil, "create" => true, "update" => true, "nullable" => true, "readOnCreateOnly" => false}
  @[JSON::Field(key: "packetConfig")]
  property! packet_config : PacketConfig
end
