require "json"

class Rancher::SecondaryLaunchConfig < Rancher::Object
  include JSON::Serializable

  # accountId => {"type" => "reference[account]", "description" => nil, "create" => false, "update" => false, "nullable" => true, "readOnCreateOnly" => false, "maxLength" => 255}
  # UNSUPPORTED

  # agentId => {"type" => "reference[agent]", "description" => nil, "create" => false, "update" => false, "nullable" => true, "readOnCreateOnly" => false, "maxLength" => 255}
  # UNSUPPORTED

  # allocationState => {"type" => "string", "description" => nil, "create" => false, "update" => false, "nullable" => true, "readOnCreateOnly" => false, "maxLength" => 255}
  @[JSON::Field(key: "allocationState")]
  property! allocation_state : String

  # blkioDeviceOptions => {"type" => "map[blkioDeviceOption]", "description" => nil, "create" => true, "update" => false, "nullable" => true, "readOnCreateOnly" => false}
  # UNSUPPORTED

  # blkioWeight => {"type" => "int", "description" => nil, "create" => true, "update" => false, "nullable" => true, "readOnCreateOnly" => false}
  @[JSON::Field(key: "blkioWeight")]
  property! blkio_weight : Int32

  # build => {"type" => "dockerBuild", "description" => nil, "create" => true, "update" => false, "nullable" => true, "readOnCreateOnly" => false}
  @[JSON::Field(key: "build")]
  property! build : DockerBuild

  # capAdd => {"type" => "array[enum]", "description" => nil, "create" => true, "update" => false, "nullable" => true, "readOnCreateOnly" => false, "options" => ["ALL", "AUDIT_CONTROL", "AUDIT_WRITE", "BLOCK_SUSPEND", "CHOWN", "DAC_OVERRIDE", "DAC_READ_SEARCH", "FOWNER", "FSETID", "IPC_LOCK", "IPC_OWNER", "KILL", "LEASE", "LINUX_IMMUTABLE", "MAC_ADMIN", "MAC_OVERRIDE", "MKNOD", "NET_ADMIN", "NET_BIND_SERVICE", "NET_BROADCAST", "NET_RAW", "SETFCAP", "SETGID", "SETPCAP", "SETUID", "SYSLOG", "SYS_ADMIN", "SYS_BOOT", "SYS_CHROOT", "SYS_MODULE", "SYS_NICE", "SYS_PACCT", "SYS_PTRACE", "SYS_RAWIO", "SYS_RESOURCE", "SYS_TIME", "SYS_TTY_CONFIG", "WAKE_ALARM"]}
  @[JSON::Field(key: "capAdd")]
  property! cap_add : Array(String)

  # capDrop => {"type" => "array[enum]", "description" => nil, "create" => true, "update" => false, "nullable" => true, "readOnCreateOnly" => false, "options" => ["ALL", "AUDIT_CONTROL", "AUDIT_WRITE", "BLOCK_SUSPEND", "CHOWN", "DAC_OVERRIDE", "DAC_READ_SEARCH", "FOWNER", "FSETID", "IPC_LOCK", "IPC_OWNER", "KILL", "LEASE", "LINUX_IMMUTABLE", "MAC_ADMIN", "MAC_OVERRIDE", "MKNOD", "NET_ADMIN", "NET_BIND_SERVICE", "NET_BROADCAST", "NET_RAW", "SETFCAP", "SETGID", "SETPCAP", "SETUID", "SYSLOG", "SYS_ADMIN", "SYS_BOOT", "SYS_CHROOT", "SYS_MODULE", "SYS_NICE", "SYS_PACCT", "SYS_PTRACE", "SYS_RAWIO", "SYS_RESOURCE", "SYS_TIME", "SYS_TTY_CONFIG", "WAKE_ALARM"]}
  @[JSON::Field(key: "capDrop")]
  property! cap_drop : Array(String)

  # cgroupParent => {"type" => "string", "description" => nil, "create" => true, "update" => false, "nullable" => true, "readOnCreateOnly" => false}
  @[JSON::Field(key: "cgroupParent")]
  property! cgroup_parent : String

  # command => {"type" => "array[string]", "description" => nil, "create" => true, "update" => false, "nullable" => true, "readOnCreateOnly" => false}
  @[JSON::Field(key: "command")]
  property! command : Array(String)

  # count => {"type" => "int", "description" => nil, "create" => true, "update" => false, "nullable" => true, "readOnCreateOnly" => false}
  @[JSON::Field(key: "count")]
  property! count : Int32

  # cpuCount => {"type" => "int", "description" => nil, "create" => true, "update" => false, "nullable" => true, "readOnCreateOnly" => false}
  @[JSON::Field(key: "cpuCount")]
  property! cpu_count : Int32

  # cpuPercent => {"type" => "int", "description" => nil, "create" => true, "update" => false, "nullable" => true, "readOnCreateOnly" => false}
  @[JSON::Field(key: "cpuPercent")]
  property! cpu_percent : Int32

  # cpuPeriod => {"type" => "int", "description" => nil, "create" => true, "update" => false, "nullable" => true, "readOnCreateOnly" => false}
  @[JSON::Field(key: "cpuPeriod")]
  property! cpu_period : Int32

  # cpuQuota => {"type" => "int", "description" => nil, "create" => true, "update" => false, "nullable" => true, "readOnCreateOnly" => false}
  @[JSON::Field(key: "cpuQuota")]
  property! cpu_quota : Int32

  # cpuRealtimePeriod => {"type" => "int", "description" => nil, "create" => true, "update" => false, "nullable" => true, "readOnCreateOnly" => false}
  @[JSON::Field(key: "cpuRealtimePeriod")]
  property! cpu_realtime_period : Int32

  # cpuRealtimeRuntime => {"type" => "int", "description" => nil, "create" => true, "update" => false, "nullable" => true, "readOnCreateOnly" => false}
  @[JSON::Field(key: "cpuRealtimeRuntime")]
  property! cpu_realtime_runtime : Int32

  # cpuSet => {"type" => "string", "description" => nil, "create" => true, "update" => false, "nullable" => true, "readOnCreateOnly" => false}
  @[JSON::Field(key: "cpuSet")]
  property! cpu_set : String

  # cpuSetMems => {"type" => "string", "description" => nil, "create" => true, "update" => false, "nullable" => true, "readOnCreateOnly" => false}
  @[JSON::Field(key: "cpuSetMems")]
  property! cpu_set_mems : String

  # cpuShares => {"type" => "int", "description" => nil, "create" => true, "update" => false, "nullable" => true, "readOnCreateOnly" => false}
  @[JSON::Field(key: "cpuShares")]
  property! cpu_shares : Int32

  # createIndex => {"type" => "int", "description" => nil, "create" => false, "update" => false, "nullable" => true, "readOnCreateOnly" => false, "maxLength" => 255}
  @[JSON::Field(key: "createIndex")]
  property! create_index : Int32

  # created => {"type" => "date", "description" => nil, "create" => false, "update" => false, "nullable" => true, "readOnCreateOnly" => false, "maxLength" => 255}
  @[JSON::Field(key: "created")]
  property! created : Time

  # data => {"type" => "map[json]", "description" => nil, "create" => false, "update" => false, "nullable" => true, "readOnCreateOnly" => false, "maxLength" => 16777215}
  # UNSUPPORTED

  # dataVolumeMounts => {"type" => "map[reference[volume]]", "description" => nil, "create" => true, "update" => false, "nullable" => true, "readOnCreateOnly" => false}
  # UNSUPPORTED

  # dataVolumes => {"type" => "array[string]", "description" => nil, "create" => true, "update" => false, "nullable" => true, "readOnCreateOnly" => false}
  @[JSON::Field(key: "dataVolumes")]
  property! data_volumes : Array(String)

  # dataVolumesFrom => {"type" => "array[reference[container]]", "description" => nil, "create" => true, "update" => false, "nullable" => true, "readOnCreateOnly" => false}
  # UNSUPPORTED

  # dataVolumesFromLaunchConfigs => {"type" => "array[string]", "description" => nil, "create" => true, "update" => false, "nullable" => true, "readOnCreateOnly" => false}
  @[JSON::Field(key: "dataVolumesFromLaunchConfigs")]
  property! data_volumes_from_launch_configs : Array(String)

  # deploymentUnitUuid => {"type" => "string", "description" => nil, "create" => false, "update" => false, "nullable" => true, "readOnCreateOnly" => false, "maxLength" => 128}
  @[JSON::Field(key: "deploymentUnitUuid")]
  property! deployment_unit_uuid : String

  # description => {"type" => "string", "description" => nil, "create" => true, "update" => true, "nullable" => true, "readOnCreateOnly" => false, "maxLength" => 1024}
  @[JSON::Field(key: "description")]
  property! description : String

  # devices => {"type" => "array[string]", "description" => nil, "create" => true, "update" => false, "nullable" => true, "readOnCreateOnly" => false}
  @[JSON::Field(key: "devices")]
  property! devices : Array(String)

  # diskQuota => {"type" => "int", "description" => nil, "create" => true, "update" => false, "nullable" => true, "readOnCreateOnly" => false}
  @[JSON::Field(key: "diskQuota")]
  property! disk_quota : Int32

  # disks => {"type" => "array[virtualMachineDisk]", "description" => nil, "create" => true, "update" => false, "nullable" => true, "readOnCreateOnly" => false}
  @[JSON::Field(key: "disks")]
  property! disks : Array(VirtualMachineDisk)

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

  # entryPoint => {"type" => "array[string]", "description" => nil, "create" => true, "update" => false, "nullable" => true, "readOnCreateOnly" => false}
  @[JSON::Field(key: "entryPoint")]
  property! entry_point : Array(String)

  # environment => {"type" => "map[string]", "description" => nil, "create" => true, "update" => false, "readOnCreateOnly" => false}
  # UNSUPPORTED

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
  property! health_interval : Int32

  # healthRetries => {"type" => "int", "description" => nil, "create" => true, "update" => false, "nullable" => true, "readOnCreateOnly" => false}
  @[JSON::Field(key: "healthRetries")]
  property! health_retries : Int32

  # healthState => {"type" => "enum", "description" => nil, "create" => false, "update" => false, "nullable" => true, "readOnCreateOnly" => false, "maxLength" => 128, "options" => ["healthy", "unhealthy", "updating-healthy", "updating-unhealthy", "initializing"]}
  @[JSON::Field(key: "healthState")]
  property! health_state : String

  # healthTimeout => {"type" => "int", "description" => nil, "create" => true, "update" => false, "nullable" => true, "readOnCreateOnly" => false}
  @[JSON::Field(key: "healthTimeout")]
  property! health_timeout : Int32

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
  property! io_maximum_bandwidth : Int32

  # ioMaximumIOps => {"type" => "int", "description" => nil, "create" => true, "update" => false, "nullable" => true, "readOnCreateOnly" => false}
  @[JSON::Field(key: "ioMaximumIOps")]
  property! io_maximum_i_ops : Int32

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
  property! kernel_memory : Int32

  # kind => {"type" => "enum", "description" => nil, "create" => true, "update" => false, "nullable" => true, "readOnCreateOnly" => false, "maxLength" => 255, "options" => ["container", "virtualMachine"], "default" => "container"}
  @[JSON::Field(key: "kind")]
  property! kind : String

  # labels => {"type" => "map[string]", "description" => nil, "create" => true, "update" => false, "readOnCreateOnly" => false}
  # UNSUPPORTED

  # logConfig => {"type" => "logConfig", "description" => nil, "create" => true, "update" => false, "nullable" => true, "readOnCreateOnly" => false}
  @[JSON::Field(key: "logConfig")]
  property! log_config : LogConfig

  # lxcConf => {"type" => "map[string]", "description" => nil, "create" => true, "update" => false, "nullable" => true, "readOnCreateOnly" => false}
  # UNSUPPORTED

  # memory => {"type" => "int", "description" => nil, "create" => true, "update" => false, "nullable" => true, "readOnCreateOnly" => false}
  @[JSON::Field(key: "memory")]
  property! memory : Int32

  # memoryMb => {"type" => "int", "description" => nil, "create" => true, "update" => false, "nullable" => true, "readOnCreateOnly" => false, "maxLength" => 255}
  @[JSON::Field(key: "memoryMb")]
  property! memory_mb : Int32

  # memoryReservation => {"type" => "int", "description" => nil, "create" => true, "update" => false, "nullable" => true, "readOnCreateOnly" => false, "maxLength" => 255}
  @[JSON::Field(key: "memoryReservation")]
  property! memory_reservation : Int32

  # memorySwap => {"type" => "int", "description" => nil, "create" => true, "update" => false, "nullable" => true, "readOnCreateOnly" => false}
  @[JSON::Field(key: "memorySwap")]
  property! memory_swap : Int32

  # memorySwappiness => {"type" => "int", "description" => nil, "create" => true, "update" => false, "nullable" => true, "readOnCreateOnly" => false}
  @[JSON::Field(key: "memorySwappiness")]
  property! memory_swappiness : Int32

  # milliCpuReservation => {"type" => "int", "description" => nil, "create" => true, "update" => false, "nullable" => true, "readOnCreateOnly" => false, "maxLength" => 255}
  @[JSON::Field(key: "milliCpuReservation")]
  property! milli_cpu_reservation : Int32

  # mounts => {"type" => "array[mountEntry]", "description" => nil, "create" => false, "update" => false, "readOnCreateOnly" => false}
  @[JSON::Field(key: "mounts")]
  property! mounts : Array(MountEntry)

  # name => {"type" => "string", "validChars" => "a-zA-Z0-9-", "description" => nil, "create" => true, "update" => false, "unique" => true, "required" => true, "readOnCreateOnly" => false, "minLength" => 1, "maxLength" => 63}
  @[JSON::Field(key: "name")]
  property! name : String

  # nativeContainer => {"type" => "boolean", "description" => nil, "create" => false, "update" => false, "readOnCreateOnly" => false, "maxLength" => 255}
  @[JSON::Field(key: "nativeContainer")]
  property! native_container : Bool

  # netAlias => {"type" => "array[string]", "description" => nil, "create" => true, "update" => false, "nullable" => true, "readOnCreateOnly" => false}
  @[JSON::Field(key: "netAlias")]
  property! net_alias : Array(String)

  # networkContainerId => {"type" => "reference[container]", "description" => nil, "create" => true, "update" => false, "nullable" => true, "readOnCreateOnly" => false, "maxLength" => 255}
  # UNSUPPORTED

  # networkIds => {"type" => "array[reference[network]]", "description" => nil, "create" => true, "update" => false, "nullable" => true, "readOnCreateOnly" => false}
  # UNSUPPORTED

  # networkLaunchConfig => {"type" => "string", "description" => nil, "create" => true, "update" => false, "nullable" => true, "readOnCreateOnly" => false}
  @[JSON::Field(key: "networkLaunchConfig")]
  property! network_launch_config : String

  # networkMode => {"type" => "string", "description" => nil, "create" => true, "update" => false, "nullable" => true, "readOnCreateOnly" => false, "default" => "managed"}
  @[JSON::Field(key: "networkMode")]
  property! network_mode : String

  # oomKillDisable => {"type" => "boolean", "description" => nil, "create" => true, "update" => false, "nullable" => true, "readOnCreateOnly" => false}
  @[JSON::Field(key: "oomKillDisable")]
  property! oom_kill_disable : Bool

  # oomScoreAdj => {"type" => "int", "description" => nil, "create" => true, "update" => false, "nullable" => true, "readOnCreateOnly" => false}
  @[JSON::Field(key: "oomScoreAdj")]
  property! oom_score_adj : Int32

  # pidMode => {"type" => "enum", "description" => nil, "create" => true, "update" => false, "nullable" => true, "readOnCreateOnly" => false, "options" => ["host"]}
  @[JSON::Field(key: "pidMode")]
  property! pid_mode : String

  # pidsLimit => {"type" => "int", "description" => nil, "create" => true, "update" => false, "nullable" => true, "readOnCreateOnly" => false}
  @[JSON::Field(key: "pidsLimit")]
  property! pids_limit : Int32

  # ports => {"type" => "array[string]", "description" => nil, "create" => true, "update" => true, "nullable" => true, "readOnCreateOnly" => false}
  @[JSON::Field(key: "ports")]
  property! ports : Array(String)

  # primaryIpAddress => {"type" => "string", "description" => nil, "create" => false, "update" => false, "readOnCreateOnly" => false}
  @[JSON::Field(key: "primaryIpAddress")]
  property! primary_ip_address : String

  # primaryNetworkId => {"type" => "reference[network]", "description" => nil, "create" => false, "update" => false, "readOnCreateOnly" => false}
  # UNSUPPORTED

  # privileged => {"type" => "boolean", "description" => nil, "create" => true, "update" => false, "readOnCreateOnly" => false, "default" => false}
  @[JSON::Field(key: "privileged")]
  property! privileged : Bool

  # publishAllPorts => {"type" => "boolean", "description" => nil, "create" => true, "update" => false, "readOnCreateOnly" => false, "default" => false}
  @[JSON::Field(key: "publishAllPorts")]
  property! publish_all_ports : Bool

  # readOnly => {"type" => "boolean", "description" => nil, "create" => true, "update" => false, "readOnCreateOnly" => false, "default" => false}
  @[JSON::Field(key: "readOnly")]
  property! read_only : Bool

  # registryCredentialId => {"type" => "reference[registryCredential]", "description" => nil, "create" => true, "update" => false, "nullable" => true, "readOnCreateOnly" => false, "maxLength" => 255}
  # UNSUPPORTED

  # removeTime => {"type" => "date", "description" => nil, "create" => false, "update" => false, "nullable" => true, "readOnCreateOnly" => false, "maxLength" => 255}
  @[JSON::Field(key: "removeTime")]
  property! remove_time : Time

  # removed => {"type" => "date", "description" => nil, "create" => false, "update" => false, "nullable" => true, "readOnCreateOnly" => false, "maxLength" => 255}
  @[JSON::Field(key: "removed")]
  property! removed : Time

  # requestedHostId => {"type" => "reference[host]", "description" => nil, "create" => true, "update" => false, "nullable" => true, "readOnCreateOnly" => false}
  # UNSUPPORTED

  # requestedIpAddress => {"type" => "string", "description" => nil, "create" => true, "update" => false, "nullable" => true, "readOnCreateOnly" => false}
  @[JSON::Field(key: "requestedIpAddress")]
  property! requested_ip_address : String

  # runInit => {"type" => "boolean", "description" => nil, "create" => true, "update" => false, "readOnCreateOnly" => false, "default" => false}
  @[JSON::Field(key: "runInit")]
  property! run_init : Bool

  # secrets => {"type" => "array[secretReference]", "description" => nil, "create" => true, "update" => false, "readOnCreateOnly" => false}
  @[JSON::Field(key: "secrets")]
  property! secrets : Array(SecretReference)

  # securityOpt => {"type" => "array[string]", "description" => nil, "create" => true, "update" => false, "nullable" => true, "readOnCreateOnly" => false}
  @[JSON::Field(key: "securityOpt")]
  property! security_opt : Array(String)

  # serviceId => {"type" => "reference[service]", "description" => nil, "create" => false, "update" => false, "nullable" => true, "readOnCreateOnly" => false, "maxLength" => 255}
  # UNSUPPORTED

  # serviceIds => {"type" => "array[reference[service]]", "description" => nil, "create" => false, "update" => false, "nullable" => true, "readOnCreateOnly" => false}
  # UNSUPPORTED

  # shmSize => {"type" => "int", "description" => nil, "create" => true, "update" => false, "nullable" => true, "readOnCreateOnly" => false}
  @[JSON::Field(key: "shmSize")]
  property! shm_size : Int32

  # stackId => {"type" => "reference[stack]", "description" => nil, "create" => true, "update" => false, "nullable" => true, "readOnCreateOnly" => false, "maxLength" => 255}
  # UNSUPPORTED

  # startCount => {"type" => "int", "description" => nil, "create" => false, "update" => false, "nullable" => true, "readOnCreateOnly" => false, "maxLength" => 255}
  @[JSON::Field(key: "startCount")]
  property! start_count : Int32

  # startOnCreate => {"type" => "boolean", "description" => nil, "create" => true, "update" => false, "readOnCreateOnly" => false, "default" => true}
  @[JSON::Field(key: "startOnCreate")]
  property! start_on_create : Bool

  # state => {"type" => "enum", "description" => nil, "create" => false, "update" => false, "readOnCreateOnly" => false, "maxLength" => 128, "options" => ["creating", "error", "erroring", "migrating", "purged", "purging", "removed", "removing", "requested", "restarting", "running", "starting", "stopped", "stopping", "updating-running", "updating-stopped"]}
  @[JSON::Field(key: "state")]
  property! state : String

  # stdinOpen => {"type" => "boolean", "description" => nil, "create" => true, "update" => false, "readOnCreateOnly" => false, "default" => false}
  @[JSON::Field(key: "stdinOpen")]
  property! stdin_open : Bool

  # stopSignal => {"type" => "string", "description" => nil, "create" => true, "update" => false, "nullable" => true, "readOnCreateOnly" => false}
  @[JSON::Field(key: "stopSignal")]
  property! stop_signal : String

  # stopTimeout => {"type" => "int", "description" => nil, "create" => true, "update" => false, "nullable" => true, "readOnCreateOnly" => false}
  @[JSON::Field(key: "stopTimeout")]
  property! stop_timeout : Int32

  # storageOpt => {"type" => "map[string]", "description" => nil, "create" => true, "update" => false, "nullable" => true, "readOnCreateOnly" => false}
  # UNSUPPORTED

  # sysctls => {"type" => "map[string]", "description" => nil, "create" => true, "update" => false, "nullable" => true, "readOnCreateOnly" => false}
  # UNSUPPORTED

  # system => {"type" => "boolean", "description" => nil, "create" => false, "update" => false, "readOnCreateOnly" => false, "maxLength" => 255, "default" => false}
  @[JSON::Field(key: "system")]
  property! system : Bool

  # tmpfs => {"type" => "map[string]", "description" => nil, "create" => true, "update" => false, "nullable" => true, "readOnCreateOnly" => false}
  # UNSUPPORTED

  # token => {"type" => "string", "description" => nil, "create" => false, "update" => false, "nullable" => true, "readOnCreateOnly" => false, "maxLength" => 255}
  @[JSON::Field(key: "token")]
  property! token : String

  # transitioning => {"type" => "enum", "description" => nil, "create" => false, "update" => false, "readOnCreateOnly" => false, "options" => ["yes", "no", "error"]}
  @[JSON::Field(key: "transitioning")]
  property! transitioning : String

  # transitioningMessage => {"type" => "string", "description" => nil, "create" => false, "update" => false, "nullable" => true, "readOnCreateOnly" => false}
  @[JSON::Field(key: "transitioningMessage")]
  property! transitioning_message : String

  # transitioningProgress => {"type" => "int", "description" => nil, "create" => false, "update" => false, "nullable" => true, "readOnCreateOnly" => false}
  @[JSON::Field(key: "transitioningProgress")]
  property! transitioning_progress : Int32

  # tty => {"type" => "boolean", "description" => nil, "create" => true, "update" => false, "readOnCreateOnly" => false, "default" => false}
  @[JSON::Field(key: "tty")]
  property! tty : Bool

  # ulimits => {"type" => "array[ulimit]", "description" => nil, "create" => true, "update" => false, "nullable" => true, "readOnCreateOnly" => false}
  @[JSON::Field(key: "ulimits")]
  property! ulimits : Array(Ulimit)

  # user => {"type" => "string", "description" => nil, "create" => true, "update" => false, "nullable" => true, "readOnCreateOnly" => false, "minLength" => 1}
  @[JSON::Field(key: "user")]
  property! user : String

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

  # vcpu => {"type" => "int", "description" => nil, "create" => true, "update" => false, "nullable" => true, "readOnCreateOnly" => false, "default" => 1}
  @[JSON::Field(key: "vcpu")]
  property! vcpu : Int32

  # version => {"type" => "string", "description" => nil, "create" => false, "update" => false, "readOnCreateOnly" => false, "maxLength" => 255, "default" => "0"}
  @[JSON::Field(key: "version")]
  property! version : String

  # volumeDriver => {"type" => "string", "description" => nil, "create" => true, "update" => false, "nullable" => true, "readOnCreateOnly" => false}
  @[JSON::Field(key: "volumeDriver")]
  property! volume_driver : String

  # workingDir => {"type" => "string", "description" => nil, "create" => true, "update" => false, "nullable" => true, "readOnCreateOnly" => false, "minLength" => 1}
  @[JSON::Field(key: "workingDir")]
  property! working_dir : String
end
