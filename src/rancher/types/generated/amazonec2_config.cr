require "json"

class Rancher::Amazonec2Config < Rancher::Object
  include JSON::Serializable

  # accessKey => {"type" => "string", "description" => "AWS Access Key", "create" => true, "update" => false, "readOnCreateOnly" => false, "default" => ""}
  @[JSON::Field(key: "accessKey")]
  property! access_key : String

  # ami => {"type" => "string", "description" => "AWS machine image", "create" => true, "update" => false, "readOnCreateOnly" => false, "default" => ""}
  @[JSON::Field(key: "ami")]
  property! ami : String

  # blockDurationMinutes => {"type" => "string", "description" => "AWS spot instance duration in minutes (60, 120, 180, 240, 300, or 360)", "create" => true, "update" => false, "readOnCreateOnly" => false, "default" => "0"}
  @[JSON::Field(key: "blockDurationMinutes")]
  property! block_duration_minutes : String

  # deviceName => {"type" => "string", "description" => "AWS root device name", "create" => true, "update" => false, "readOnCreateOnly" => false, "default" => "/dev/sda1"}
  @[JSON::Field(key: "deviceName")]
  property! device_name : String

  # endpoint => {"type" => "string", "description" => "Optional endpoint URL (hostname only or fully qualified URI)", "create" => true, "update" => false, "readOnCreateOnly" => false, "default" => ""}
  @[JSON::Field(key: "endpoint")]
  property! endpoint : String

  # iamInstanceProfile => {"type" => "string", "description" => "AWS IAM Instance Profile", "create" => true, "update" => false, "readOnCreateOnly" => false, "default" => ""}
  @[JSON::Field(key: "iamInstanceProfile")]
  property! iam_instance_profile : String

  # insecureTransport => {"type" => "boolean", "description" => "Disable SSL when sending requests", "create" => true, "update" => false, "readOnCreateOnly" => false}
  @[JSON::Field(key: "insecureTransport")]
  property! insecure_transport : Bool

  # instanceType => {"type" => "string", "description" => "AWS instance type", "create" => true, "update" => false, "readOnCreateOnly" => false, "default" => "t2.micro"}
  @[JSON::Field(key: "instanceType")]
  property! instance_type : String

  # keypairName => {"type" => "string", "description" => "AWS keypair to use; requires --amazonec2-ssh-keypath", "create" => true, "update" => false, "readOnCreateOnly" => false, "default" => ""}
  @[JSON::Field(key: "keypairName")]
  property! keypair_name : String

  # monitoring => {"type" => "boolean", "description" => "Set this flag to enable CloudWatch monitoring", "create" => true, "update" => false, "readOnCreateOnly" => false}
  @[JSON::Field(key: "monitoring")]
  property! monitoring : Bool

  # openPort => {"type" => "array[string]", "description" => "Make the specified port number accessible from the Internet", "create" => true, "update" => false, "readOnCreateOnly" => false}
  @[JSON::Field(key: "openPort")]
  property! open_port : Array(String)

  # privateAddressOnly => {"type" => "boolean", "description" => "Only use a private IP address", "create" => true, "update" => false, "readOnCreateOnly" => false}
  @[JSON::Field(key: "privateAddressOnly")]
  property! private_address_only : Bool

  # region => {"type" => "string", "description" => "AWS region", "create" => true, "update" => false, "readOnCreateOnly" => false, "default" => "us-east-1"}
  @[JSON::Field(key: "region")]
  property! region : String

  # requestSpotInstance => {"type" => "boolean", "description" => "Set this flag to request spot instance", "create" => true, "update" => false, "readOnCreateOnly" => false}
  @[JSON::Field(key: "requestSpotInstance")]
  property! request_spot_instance : Bool

  # retries => {"type" => "string", "description" => "Set retry count for recoverable failures (use -1 to disable)", "create" => true, "update" => false, "readOnCreateOnly" => false, "default" => "5"}
  @[JSON::Field(key: "retries")]
  property! retries : String

  # rootSize => {"type" => "string", "description" => "AWS root disk size (in GB)", "create" => true, "update" => false, "readOnCreateOnly" => false, "default" => "16"}
  @[JSON::Field(key: "rootSize")]
  property! root_size : String

  # secretKey => {"type" => "string", "description" => "AWS Secret Key", "create" => true, "update" => false, "readOnCreateOnly" => false, "default" => ""}
  @[JSON::Field(key: "secretKey")]
  property! secret_key : String

  # securityGroup => {"type" => "array[string]", "description" => "AWS VPC security group", "create" => true, "update" => false, "readOnCreateOnly" => false, "default" => ["docker-machine"]}
  @[JSON::Field(key: "securityGroup")]
  property! security_group : Array(String)

  # sessionToken => {"type" => "string", "description" => "AWS Session Token", "create" => true, "update" => false, "readOnCreateOnly" => false, "default" => ""}
  @[JSON::Field(key: "sessionToken")]
  property! session_token : String

  # spotPrice => {"type" => "string", "description" => "AWS spot instance bid price (in dollar)", "create" => true, "update" => false, "readOnCreateOnly" => false, "default" => "0.50"}
  @[JSON::Field(key: "spotPrice")]
  property! spot_price : String

  # sshKeypath => {"type" => "string", "description" => "SSH Key for Instance", "create" => true, "update" => false, "readOnCreateOnly" => false, "default" => ""}
  @[JSON::Field(key: "sshKeypath")]
  property! ssh_keypath : String

  # sshUser => {"type" => "string", "description" => "Set the name of the ssh user", "create" => true, "update" => false, "readOnCreateOnly" => false, "default" => "ubuntu"}
  @[JSON::Field(key: "sshUser")]
  property! ssh_user : String

  # subnetId => {"type" => "string", "description" => "AWS VPC subnet id", "create" => true, "update" => false, "readOnCreateOnly" => false, "default" => ""}
  @[JSON::Field(key: "subnetId")]
  property! subnet_id : String

  # tags => {"type" => "string", "description" => "AWS Tags (e.g. key1,value1,key2,value2)", "create" => true, "update" => false, "readOnCreateOnly" => false, "default" => ""}
  @[JSON::Field(key: "tags")]
  property! tags : String

  # useEbsOptimizedInstance => {"type" => "boolean", "description" => "Create an EBS optimized instance", "create" => true, "update" => false, "readOnCreateOnly" => false}
  @[JSON::Field(key: "useEbsOptimizedInstance")]
  property! use_ebs_optimized_instance : Bool

  # usePrivateAddress => {"type" => "boolean", "description" => "Force the usage of private IP address", "create" => true, "update" => false, "readOnCreateOnly" => false}
  @[JSON::Field(key: "usePrivateAddress")]
  property! use_private_address : Bool

  # userdata => {"type" => "string", "description" => "path to file with cloud-init user data", "create" => true, "update" => false, "readOnCreateOnly" => false, "default" => ""}
  @[JSON::Field(key: "userdata")]
  property! userdata : String

  # volumeType => {"type" => "string", "description" => "Amazon EBS volume type", "create" => true, "update" => false, "readOnCreateOnly" => false, "default" => "gp2"}
  @[JSON::Field(key: "volumeType")]
  property! volume_type : String

  # vpcId => {"type" => "string", "description" => "AWS VPC id", "create" => true, "update" => false, "readOnCreateOnly" => false, "default" => ""}
  @[JSON::Field(key: "vpcId")]
  property! vpc_id : String

  # zone => {"type" => "string", "description" => "AWS zone for instance (i.e. a,b,c,d,e)", "create" => true, "update" => false, "readOnCreateOnly" => false, "default" => "a"}
  @[JSON::Field(key: "zone")]
  property! zone : String
end
