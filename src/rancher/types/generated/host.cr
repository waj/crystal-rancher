require "json"

class Rancher::Host < Rancher::Object
  include JSON::Serializable

  # accountId => {"type" => "reference[account]", "description" => nil, "create" => false, "update" => false, "nullable" => true, "readOnCreateOnly" => false, "maxLength" => 255}
  # UNSUPPORTED

  # agentState => {"type" => "string", "description" => nil, "create" => false, "update" => false, "nullable" => true, "readOnCreateOnly" => false, "maxLength" => 128}
  @[JSON::Field(key: "agentState")]
  property! agent_state : String

  # computeTotal => {"type" => "int", "description" => nil, "create" => false, "update" => false, "nullable" => true, "readOnCreateOnly" => false, "maxLength" => 255}
  @[JSON::Field(key: "computeTotal")]
  property! compute_total : Int64

  # created => {"type" => "date", "description" => nil, "create" => false, "update" => false, "nullable" => true, "readOnCreateOnly" => false, "maxLength" => 255}
  @[JSON::Field(key: "created")]
  property! created : Time

  # description => {"type" => "string", "description" => nil, "create" => true, "update" => true, "nullable" => true, "readOnCreateOnly" => false, "maxLength" => 1024}
  @[JSON::Field(key: "description")]
  property! description : String

  # hostTemplateId => {"type" => "reference[hostTemplate]", "description" => nil, "create" => true, "update" => false, "nullable" => true, "readOnCreateOnly" => false}
  # UNSUPPORTED

  # kind => {"type" => "string", "description" => nil, "create" => false, "update" => false, "nullable" => true, "readOnCreateOnly" => false, "maxLength" => 255}
  @[JSON::Field(key: "kind")]
  property! kind : String

  # localStorageMb => {"type" => "int", "description" => nil, "create" => true, "update" => true, "nullable" => true, "readOnCreateOnly" => false, "maxLength" => 255}
  @[JSON::Field(key: "localStorageMb")]
  property! local_storage_mb : Int64

  # memory => {"type" => "int", "description" => nil, "create" => true, "update" => true, "nullable" => true, "readOnCreateOnly" => false, "maxLength" => 255}
  @[JSON::Field(key: "memory")]
  property! memory : Int64

  # milliCpu => {"type" => "int", "description" => nil, "create" => true, "update" => true, "nullable" => true, "readOnCreateOnly" => false, "maxLength" => 255}
  @[JSON::Field(key: "milliCpu")]
  property! milli_cpu : Int64

  # name => {"type" => "string", "description" => nil, "create" => true, "update" => true, "nullable" => true, "readOnCreateOnly" => false}
  @[JSON::Field(key: "name")]
  property! name : String

  # physicalHostId => {"type" => "reference[physicalHost]", "description" => nil, "create" => false, "update" => false, "nullable" => true, "readOnCreateOnly" => false, "maxLength" => 255}
  # UNSUPPORTED

  # removed => {"type" => "date", "description" => nil, "create" => false, "update" => false, "nullable" => true, "readOnCreateOnly" => false, "maxLength" => 255}
  @[JSON::Field(key: "removed")]
  property! removed : Time

  # stackId => {"type" => "reference[stack]", "description" => nil, "create" => true, "update" => false, "nullable" => true, "readOnCreateOnly" => false, "maxLength" => 255}
  # UNSUPPORTED

  # state => {"type" => "enum", "description" => nil, "create" => false, "update" => false, "readOnCreateOnly" => false, "maxLength" => 128, "options" => ["activating", "active", "deactivating", "error", "erroring", "inactive", "provisioned", "provisioning", "purged", "purging", "registering", "removed", "removing", "requested", "updating-active", "updating-inactive"]}
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

  # info => {"type" => "json", "description" => nil, "create" => false, "update" => false, "readOnCreateOnly" => false}
  # UNSUPPORTED

  # hostname => {"type" => "string", "description" => nil, "create" => true, "update" => false, "required" => true, "readOnCreateOnly" => false}
  @[JSON::Field(key: "hostname")]
  property! hostname : String

  # agentIpAddress => {"type" => "string", "description" => nil, "create" => false, "update" => false, "nullable" => true, "readOnCreateOnly" => false}
  @[JSON::Field(key: "agentIpAddress")]
  property! agent_ip_address : String

  # instanceIds => {"type" => "array[reference[instance]]", "description" => nil, "create" => false, "update" => false, "readOnCreateOnly" => false}
  # UNSUPPORTED

  # labels => {"type" => "map[string]", "description" => nil, "create" => true, "update" => true, "nullable" => true, "readOnCreateOnly" => false}
  # UNSUPPORTED

  # publicEndpoints => {"type" => "array[publicEndpoint]", "description" => nil, "create" => false, "update" => false, "nullable" => true, "readOnCreateOnly" => false}
  @[JSON::Field(key: "publicEndpoints")]
  property! public_endpoints : Array(PublicEndpoint)

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

  # driver => {"type" => "string", "description" => nil, "create" => false, "update" => false, "nullable" => true, "readOnCreateOnly" => false}
  @[JSON::Field(key: "driver")]
  property! driver : String

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

  # packetConfig => {"type" => "packetConfig", "description" => nil, "create" => true, "update" => true, "nullable" => true, "readOnCreateOnly" => false}
  @[JSON::Field(key: "packetConfig")]
  property! packet_config : PacketConfig
end
