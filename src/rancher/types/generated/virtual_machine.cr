require "json"

class Rancher::VirtualMachine < Rancher::Object
  include JSON::Serializable

  # accountId => {"type" => "reference[account]", "description" => nil, "create" => false, "update" => false, "nullable" => true, "readOnCreateOnly" => false, "maxLength" => 255}
  # UNSUPPORTED

  # blkioDeviceOptions => {"type" => "map[blkioDeviceOption]", "description" => nil, "create" => true, "update" => false, "nullable" => true, "readOnCreateOnly" => false}
  # UNSUPPORTED

  # blkioWeight => {"type" => "int", "description" => nil, "create" => true, "update" => false, "nullable" => true, "readOnCreateOnly" => false}
  @[JSON::Field(key: "blkioWeight")]
  property! blkio_weight : Int64

  # cgroupParent => {"type" => "string", "description" => nil, "create" => true, "update" => false, "nullable" => true, "readOnCreateOnly" => false}
  @[JSON::Field(key: "cgroupParent")]
  property! cgroup_parent : String

  # command => {"type" => "array[string]", "description" => nil, "create" => true, "update" => false, "nullable" => true, "readOnCreateOnly" => false}
  @[JSON::Field(key: "command")]
  property! command : Array(String)

  # count => {"type" => "int", "description" => nil, "create" => true, "update" => false, "nullable" => true, "readOnCreateOnly" => false}
  @[JSON::Field(key: "count")]
  property! count : Int64

  # cpuCount => {"type" => "int", "description" => nil, "create" => true, "update" => false, "nullable" => true, "readOnCreateOnly" => false}
  @[JSON::Field(key: "cpuCount")]
  property! cpu_count : Int64

  # cpuPercent => {"type" => "int", "description" => nil, "create" => true, "update" => false, "nullable" => true, "readOnCreateOnly" => false}
  @[JSON::Field(key: "cpuPercent")]
  property! cpu_percent : Int64

  # cpuPeriod => {"type" => "int", "description" => nil, "create" => true, "update" => false, "nullable" => true, "readOnCreateOnly" => false}
  @[JSON::Field(key: "cpuPeriod")]
  property! cpu_period : Int64

  # cpuQuota => {"type" => "int", "description" => nil, "create" => true, "update" => false, "nullable" => true, "readOnCreateOnly" => false}
  @[JSON::Field(key: "cpuQuota")]
  property! cpu_quota : Int64

  # cpuRealtimePeriod => {"type" => "int", "description" => nil, "create" => true, "update" => false, "nullable" => true, "readOnCreateOnly" => false}
  @[JSON::Field(key: "cpuRealtimePeriod")]
  property! cpu_realtime_period : Int64

  # cpuRealtimeRuntime => {"type" => "int", "description" => nil, "create" => true, "update" => false, "nullable" => true, "readOnCreateOnly" => false}
  @[JSON::Field(key: "cpuRealtimeRuntime")]
  property! cpu_realtime_runtime : Int64

  # cpuSet => {"type" => "string", "description" => nil, "create" => true, "update" => false, "nullable" => true, "readOnCreateOnly" => false}
  @[JSON::Field(key: "cpuSet")]
  property! cpu_set : String

  # cpuSetMems => {"type" => "string", "description" => nil, "create" => true, "update" => false, "nullable" => true, "readOnCreateOnly" => false}
  @[JSON::Field(key: "cpuSetMems")]
  property! cpu_set_mems : String

  # cpuShares => {"type" => "int", "description" => nil, "create" => true, "update" => false, "nullable" => true, "readOnCreateOnly" => false}
  @[JSON::Field(key: "cpuShares")]
  property! cpu_shares : Int64

  # createIndex => {"type" => "int", "description" => nil, "create" => false, "update" => false, "nullable" => true, "readOnCreateOnly" => false, "maxLength" => 255}
  @[JSON::Field(key: "createIndex")]
  property! create_index : Int64

  # created => {"type" => "date", "description" => nil, "create" => false, "update" => false, "nullable" => true, "readOnCreateOnly" => false, "maxLength" => 255}
  @[JSON::Field(key: "created")]
  property! created : Time

  # deploymentUnitUuid => {"type" => "string", "description" => nil, "create" => false, "update" => false, "nullable" => true, "readOnCreateOnly" => false, "maxLength" => 128}
  @[JSON::Field(key: "deploymentUnitUuid")]
  property! deployment_unit_uuid : String

  # description => {"type" => "string", "description" => nil, "create" => true, "update" => true, "nullable" => true, "readOnCreateOnly" => false, "maxLength" => 1024}
  @[JSON::Field(key: "description")]
  property! description : String

  # diskQuota => {"type" => "int", "description" => nil, "create" => true, "update" => false, "nullable" => true, "readOnCreateOnly" => false}
  @[JSON::Field(key: "diskQuota")]
  property! disk_quota : Int64

  # dns => {"type" => "array[string]", "description" => nil, "create" => true, "update" => false, "nullable" => true, "readOnCreateOnly" => false}
  @[JSON::Field(key: "dns")]
  property! dns : Array(String)

  # dnsOpt => {"type" => "array[string]", "description" => nil, "create" => true, "update" => false, "nullable" => true, "readOnCreateOnly" => false}
  @[JSON::Field(key: "dnsOpt")]
  property! dns_opt : Array(String)

  # dnsSearch => {"type" => "array[string]", "description" => nil, "create" => true, "update" => false, "nullable" => true, "readOnCreateOnly" => false}
  @[JSON::Field(key: "dnsSearch")]
  property! dns_search : Array(String)

  # domainName => {"type" => "string", "description" => nil, "create" => true, "update" => false, "nullable" => true, "readOnCreateOnly" => false}
  @[JSON::Field(key: "domainName")]
  property! domain_name : String

  # expose => {"type" => "array[string]", "description" => nil, "create" => true, "update" => false, "nullable" => true, "readOnCreateOnly" => false}
  @[JSON::Field(key: "expose")]
  property! expose : Array(String)

  # externalId => {"type" => "string", "description" => nil, "create" => false, "update" => false, "nullable" => true, "readOnCreateOnly" => false, "maxLength" => 128}
  @[JSON::Field(key: "externalId")]
  property! external_id : String

  # extraHosts => {"type" => "array[string]", "description" => nil, "create" => true, "update" => false, "nullable" => true, "readOnCreateOnly" => false}
  @[JSON::Field(key: "extraHosts")]
  property! extra_hosts : Array(String)

  # firstRunning => {"type" => "date", "description" => nil, "create" => false, "update" => false, "nullable" => true, "readOnCreateOnly" => false, "maxLength" => 255}
  @[JSON::Field(key: "firstRunning")]
  property! first_running : Time

  # groupAdd => {"type" => "array[string]", "description" => nil, "create" => true, "update" => false, "nullable" => true, "readOnCreateOnly" => false}
  @[JSON::Field(key: "groupAdd")]
  property! group_add : Array(String)

  # healthCheck => {"type" => "instanceHealthCheck", "description" => nil, "create" => true, "update" => false, "nullable" => true, "readOnCreateOnly" => false}
  @[JSON::Field(key: "healthCheck")]
  property! health_check : InstanceHealthCheck

  # healthCmd => {"type" => "array[string]", "description" => nil, "create" => true, "update" => false, "nullable" => true, "readOnCreateOnly" => false}
  @[JSON::Field(key: "healthCmd")]
  property! health_cmd : Array(String)

  # healthInterval => {"type" => "int", "description" => nil, "create" => true, "update" => false, "nullable" => true, "readOnCreateOnly" => false}
  @[JSON::Field(key: "healthInterval")]
  property! health_interval : Int64

  # healthRetries => {"type" => "int", "description" => nil, "create" => true, "update" => false, "nullable" => true, "readOnCreateOnly" => false}
  @[JSON::Field(key: "healthRetries")]
  property! health_retries : Int64

  # healthState => {"type" => "enum", "description" => nil, "create" => false, "update" => false, "nullable" => true, "readOnCreateOnly" => false, "maxLength" => 128, "options" => ["healthy", "unhealthy", "updating-healthy", "updating-unhealthy", "initializing"]}
  @[JSON::Field(key: "healthState")]
  property! health_state : String

  # healthTimeout => {"type" => "int", "description" => nil, "create" => true, "update" => false, "nullable" => true, "readOnCreateOnly" => false}
  @[JSON::Field(key: "healthTimeout")]
  property! health_timeout : Int64

  # hostId => {"type" => "reference[host]", "description" => nil, "create" => false, "update" => false, "nullable" => true, "readOnCreateOnly" => false}
  # UNSUPPORTED

  # hostname => {"type" => "string", "description" => nil, "create" => true, "update" => false, "nullable" => true, "readOnCreateOnly" => false, "minLength" => 1, "maxLength" => 255}
  @[JSON::Field(key: "hostname")]
  property! hostname : String

  # imageUuid => {"type" => "string", "description" => nil, "create" => true, "update" => false, "nullable" => true, "readOnCreateOnly" => false}
  @[JSON::Field(key: "imageUuid")]
  property! image_uuid : String

  # instanceLinks => {"type" => "map[reference[instance]]", "description" => nil, "create" => true, "update" => false, "nullable" => true, "readOnCreateOnly" => false}
  # UNSUPPORTED

  # instanceTriggeredStop => {"type" => "enum", "description" => nil, "create" => true, "update" => false, "nullable" => true, "readOnCreateOnly" => false, "maxLength" => 128, "options" => ["stop", "remove"], "default" => "stop"}
  @[JSON::Field(key: "instanceTriggeredStop")]
  property! instance_triggered_stop : String

  # ioMaximumBandwidth => {"type" => "int", "description" => nil, "create" => true, "update" => false, "nullable" => true, "readOnCreateOnly" => false}
  @[JSON::Field(key: "ioMaximumBandwidth")]
  property! io_maximum_bandwidth : Int64

  # ioMaximumIOps => {"type" => "int", "description" => nil, "create" => true, "update" => false, "nullable" => true, "readOnCreateOnly" => false}
  @[JSON::Field(key: "ioMaximumIOps")]
  property! io_maximum_i_ops : Int64

  # ip => {"type" => "string", "description" => nil, "create" => true, "update" => false, "nullable" => true, "readOnCreateOnly" => false}
  @[JSON::Field(key: "ip")]
  property! ip : String

  # ip6 => {"type" => "string", "description" => nil, "create" => true, "update" => false, "nullable" => true, "readOnCreateOnly" => false}
  @[JSON::Field(key: "ip6")]
  property! ip6 : String

  # ipcMode => {"type" => "string", "description" => nil, "create" => true, "update" => false, "nullable" => true, "readOnCreateOnly" => false}
  @[JSON::Field(key: "ipcMode")]
  property! ipc_mode : String

  # isolation => {"type" => "string", "description" => nil, "create" => true, "update" => false, "nullable" => true, "readOnCreateOnly" => false}
  @[JSON::Field(key: "isolation")]
  property! isolation : String

  # kernelMemory => {"type" => "int", "description" => nil, "create" => true, "update" => false, "nullable" => true, "readOnCreateOnly" => false}
  @[JSON::Field(key: "kernelMemory")]
  property! kernel_memory : Int64

  # kind => {"type" => "string", "description" => nil, "create" => false, "update" => false, "nullable" => true, "readOnCreateOnly" => false, "maxLength" => 255}
  @[JSON::Field(key: "kind")]
  property! kind : String

  # labels => {"type" => "map[string]", "description" => nil, "create" => true, "update" => false, "readOnCreateOnly" => false}
  # UNSUPPORTED

  # logConfig => {"type" => "logConfig", "description" => nil, "create" => true, "update" => false, "nullable" => true, "readOnCreateOnly" => false}
  @[JSON::Field(key: "logConfig")]
  property! log_config : LogConfig

  # memory => {"type" => "int", "description" => nil, "create" => true, "update" => false, "nullable" => true, "readOnCreateOnly" => false}
  @[JSON::Field(key: "memory")]
  property! memory : Int64

  # memoryMb => {"type" => "int", "description" => nil, "create" => true, "update" => false, "nullable" => true, "readOnCreateOnly" => false, "maxLength" => 255, "default" => 512}
  @[JSON::Field(key: "memoryMb")]
  property! memory_mb : Int64

  # memoryReservation => {"type" => "int", "description" => nil, "create" => true, "update" => false, "nullable" => true, "readOnCreateOnly" => false, "maxLength" => 255}
  @[JSON::Field(key: "memoryReservation")]
  property! memory_reservation : Int64

  # memorySwap => {"type" => "int", "description" => nil, "create" => true, "update" => false, "nullable" => true, "readOnCreateOnly" => false}
  @[JSON::Field(key: "memorySwap")]
  property! memory_swap : Int64

  # memorySwappiness => {"type" => "int", "description" => nil, "create" => true, "update" => false, "nullable" => true, "readOnCreateOnly" => false}
  @[JSON::Field(key: "memorySwappiness")]
  property! memory_swappiness : Int64

  # milliCpuReservation => {"type" => "int", "description" => nil, "create" => true, "update" => false, "nullable" => true, "readOnCreateOnly" => false, "maxLength" => 255}
  @[JSON::Field(key: "milliCpuReservation")]
  property! milli_cpu_reservation : Int64

  # mounts => {"type" => "array[mountEntry]", "description" => nil, "create" => false, "update" => false, "readOnCreateOnly" => false}
  @[JSON::Field(key: "mounts")]
  property! mounts : Array(MountEntry)

  # name => {"type" => "string", "description" => nil, "create" => true, "update" => true, "nullable" => true, "unique" => true, "readOnCreateOnly" => false, "maxLength" => 255}
  @[JSON::Field(key: "name")]
  property! name : String

  # nativeContainer => {"type" => "boolean", "description" => nil, "create" => false, "update" => false, "readOnCreateOnly" => false, "maxLength" => 255}
  @[JSON::Field(key: "nativeContainer")]
  property! native_container : Bool

  # netAlias => {"type" => "array[string]", "description" => nil, "create" => true, "update" => false, "nullable" => true, "readOnCreateOnly" => false}
  @[JSON::Field(key: "netAlias")]
  property! net_alias : Array(String)

  # networkIds => {"type" => "array[reference[network]]", "description" => nil, "create" => true, "update" => false, "nullable" => true, "readOnCreateOnly" => false}
  # UNSUPPORTED

  # networkMode => {"type" => "string", "description" => nil, "create" => true, "update" => false, "nullable" => true, "readOnCreateOnly" => false, "default" => "managed"}
  @[JSON::Field(key: "networkMode")]
  property! network_mode : String

  # oomKillDisable => {"type" => "boolean", "description" => nil, "create" => true, "update" => false, "nullable" => true, "readOnCreateOnly" => false}
  @[JSON::Field(key: "oomKillDisable")]
  property! oom_kill_disable : Bool

  # oomScoreAdj => {"type" => "int", "description" => nil, "create" => true, "update" => false, "nullable" => true, "readOnCreateOnly" => false}
  @[JSON::Field(key: "oomScoreAdj")]
  property! oom_score_adj : Int64

  # pidsLimit => {"type" => "int", "description" => nil, "create" => true, "update" => false, "nullable" => true, "readOnCreateOnly" => false}
  @[JSON::Field(key: "pidsLimit")]
  property! pids_limit : Int64

  # ports => {"type" => "array[string]", "description" => nil, "create" => true, "update" => false, "nullable" => true, "readOnCreateOnly" => false}
  @[JSON::Field(key: "ports")]
  property! ports : Array(String)

  # primaryIpAddress => {"type" => "string", "description" => nil, "create" => false, "update" => false, "readOnCreateOnly" => false}
  @[JSON::Field(key: "primaryIpAddress")]
  property! primary_ip_address : String

  # primaryNetworkId => {"type" => "reference[network]", "description" => nil, "create" => false, "update" => false, "readOnCreateOnly" => false}
  # UNSUPPORTED

  # registryCredentialId => {"type" => "reference[registryCredential]", "description" => nil, "create" => true, "update" => false, "nullable" => true, "readOnCreateOnly" => false, "maxLength" => 255}
  # UNSUPPORTED

  # removed => {"type" => "date", "description" => nil, "create" => false, "update" => false, "nullable" => true, "readOnCreateOnly" => false, "maxLength" => 255}
  @[JSON::Field(key: "removed")]
  property! removed : Time

  # requestedHostId => {"type" => "reference[host]", "description" => nil, "create" => true, "update" => false, "nullable" => true, "readOnCreateOnly" => false}
  # UNSUPPORTED

  # restartPolicy => {"type" => "restartPolicy", "description" => nil, "create" => true, "update" => false, "nullable" => true, "readOnCreateOnly" => false}
  @[JSON::Field(key: "restartPolicy")]
  property! restart_policy : RestartPolicy

  # runInit => {"type" => "boolean", "description" => nil, "create" => true, "update" => false, "readOnCreateOnly" => false, "default" => false}
  @[JSON::Field(key: "runInit")]
  property! run_init : Bool

  # securityOpt => {"type" => "array[string]", "description" => nil, "create" => true, "update" => false, "nullable" => true, "readOnCreateOnly" => false}
  @[JSON::Field(key: "securityOpt")]
  property! security_opt : Array(String)

  # serviceId => {"type" => "reference[service]", "description" => nil, "create" => false, "update" => false, "nullable" => true, "readOnCreateOnly" => false, "maxLength" => 255}
  # UNSUPPORTED

  # serviceIds => {"type" => "array[reference[service]]", "description" => nil, "create" => false, "update" => false, "nullable" => true, "readOnCreateOnly" => false}
  # UNSUPPORTED

  # shmSize => {"type" => "int", "description" => nil, "create" => true, "update" => false, "nullable" => true, "readOnCreateOnly" => false}
  @[JSON::Field(key: "shmSize")]
  property! shm_size : Int64

  # stackId => {"type" => "reference[stack]", "description" => nil, "create" => true, "update" => false, "nullable" => true, "readOnCreateOnly" => false, "maxLength" => 255}
  # UNSUPPORTED

  # startCount => {"type" => "int", "description" => nil, "create" => false, "update" => false, "nullable" => true, "readOnCreateOnly" => false, "maxLength" => 255}
  @[JSON::Field(key: "startCount")]
  property! start_count : Int64

  # startOnCreate => {"type" => "boolean", "description" => nil, "create" => true, "update" => false, "readOnCreateOnly" => false, "default" => true}
  @[JSON::Field(key: "startOnCreate")]
  property! start_on_create : Bool

  # state => {"type" => "enum", "description" => nil, "create" => false, "update" => false, "readOnCreateOnly" => false, "maxLength" => 128, "options" => ["creating", "error", "erroring", "migrating", "purged", "purging", "removed", "removing", "requested", "restarting", "running", "starting", "stopped", "stopping", "updating-running", "updating-stopped"]}
  @[JSON::Field(key: "state")]
  property! state : String

  # stopSignal => {"type" => "string", "description" => nil, "create" => true, "update" => false, "nullable" => true, "readOnCreateOnly" => false}
  @[JSON::Field(key: "stopSignal")]
  property! stop_signal : String

  # stopTimeout => {"type" => "int", "description" => nil, "create" => true, "update" => false, "nullable" => true, "readOnCreateOnly" => false}
  @[JSON::Field(key: "stopTimeout")]
  property! stop_timeout : Int64

  # storageOpt => {"type" => "map[string]", "description" => nil, "create" => true, "update" => false, "nullable" => true, "readOnCreateOnly" => false}
  # UNSUPPORTED

  # sysctls => {"type" => "map[string]", "description" => nil, "create" => true, "update" => false, "nullable" => true, "readOnCreateOnly" => false}
  # UNSUPPORTED

  # system => {"type" => "boolean", "description" => nil, "create" => false, "update" => false, "readOnCreateOnly" => false, "maxLength" => 255, "default" => false}
  @[JSON::Field(key: "system")]
  property! system : Bool

  # tmpfs => {"type" => "map[string]", "description" => nil, "create" => true, "update" => false, "nullable" => true, "readOnCreateOnly" => false}
  # UNSUPPORTED

  # transitioning => {"type" => "enum", "description" => nil, "create" => false, "update" => false, "readOnCreateOnly" => false, "options" => ["yes", "no", "error"]}
  @[JSON::Field(key: "transitioning")]
  property! transitioning : String

  # transitioningMessage => {"type" => "string", "description" => nil, "create" => false, "update" => false, "nullable" => true, "readOnCreateOnly" => false}
  @[JSON::Field(key: "transitioningMessage")]
  property! transitioning_message : String

  # transitioningProgress => {"type" => "int", "description" => nil, "create" => false, "update" => false, "nullable" => true, "readOnCreateOnly" => false}
  @[JSON::Field(key: "transitioningProgress")]
  property! transitioning_progress : Int64

  # ulimits => {"type" => "array[ulimit]", "description" => nil, "create" => true, "update" => false, "nullable" => true, "readOnCreateOnly" => false}
  @[JSON::Field(key: "ulimits")]
  property! ulimits : Array(Ulimit)

  # userPorts => {"type" => "array[string]", "description" => nil, "create" => false, "update" => false, "nullable" => true, "readOnCreateOnly" => false}
  @[JSON::Field(key: "userPorts")]
  property! user_ports : Array(String)

  # userdata => {"type" => "string", "description" => nil, "create" => true, "update" => false, "nullable" => true, "readOnCreateOnly" => false, "maxLength" => 65535}
  @[JSON::Field(key: "userdata")]
  property! userdata : String

  # usernsMode => {"type" => "string", "description" => nil, "create" => true, "update" => false, "nullable" => true, "readOnCreateOnly" => false}
  @[JSON::Field(key: "usernsMode")]
  property! userns_mode : String

  # uts => {"type" => "string", "description" => nil, "create" => true, "update" => false, "nullable" => true, "readOnCreateOnly" => false}
  @[JSON::Field(key: "uts")]
  property! uts : String

  # uuid => {"type" => "string", "description" => nil, "create" => false, "update" => false, "nullable" => true, "readOnCreateOnly" => false, "maxLength" => 128}
  @[JSON::Field(key: "uuid")]
  property! uuid : String

  # version => {"type" => "string", "description" => nil, "create" => false, "update" => false, "readOnCreateOnly" => false, "maxLength" => 255, "default" => "0"}
  @[JSON::Field(key: "version")]
  property! version : String

  # volumeDriver => {"type" => "string", "description" => nil, "create" => true, "update" => false, "nullable" => true, "readOnCreateOnly" => false}
  @[JSON::Field(key: "volumeDriver")]
  property! volume_driver : String

  # vcpu => {"type" => "int", "description" => nil, "create" => true, "update" => false, "nullable" => true, "readOnCreateOnly" => false, "default" => 1}
  @[JSON::Field(key: "vcpu")]
  property! vcpu : Int64

  # disks => {"type" => "array[virtualMachineDisk]", "description" => nil, "create" => true, "update" => false, "nullable" => true, "readOnCreateOnly" => false}
  @[JSON::Field(key: "disks")]
  property! disks : Array(VirtualMachineDisk)
end
