require "json"

class Rancher::AzureConfig < Rancher::Object
  include JSON::Serializable

  # availabilitySet => {"type" => "string", "description" => "Azure Availability Set to place the virtual machine into", "create" => true, "update" => false, "readOnCreateOnly" => false, "default" => "docker-machine"}
  @[JSON::Field(key: "availabilitySet")]
  property! availability_set : String

  # clientId => {"type" => "string", "description" => "Azure Service Principal Account ID (optional, browser auth is used if not specified)", "create" => true, "update" => false, "readOnCreateOnly" => false, "default" => ""}
  @[JSON::Field(key: "clientId")]
  property! client_id : String

  # clientSecret => {"type" => "string", "description" => "Azure Service Principal Account password (optional, browser auth is used if not specified)", "create" => true, "update" => false, "readOnCreateOnly" => false, "default" => ""}
  @[JSON::Field(key: "clientSecret")]
  property! client_secret : String

  # customData => {"type" => "string", "description" => "Path to file with custom-data", "create" => true, "update" => false, "readOnCreateOnly" => false, "default" => ""}
  @[JSON::Field(key: "customData")]
  property! custom_data : String

  # dns => {"type" => "string", "description" => "A unique DNS label for the public IP adddress", "create" => true, "update" => false, "readOnCreateOnly" => false, "default" => ""}
  @[JSON::Field(key: "dns")]
  property! dns : String

  # dockerPort => {"type" => "string", "description" => "Port number for Docker engine", "create" => true, "update" => false, "readOnCreateOnly" => false, "default" => "2376"}
  @[JSON::Field(key: "dockerPort")]
  property! docker_port : String

  # environment => {"type" => "string", "description" => "Azure environment (e.g. AzurePublicCloud, AzureChinaCloud)", "create" => true, "update" => false, "readOnCreateOnly" => false, "default" => "AzurePublicCloud"}
  @[JSON::Field(key: "environment")]
  property! environment : String

  # image => {"type" => "string", "description" => "Azure virtual machine OS image", "create" => true, "update" => false, "readOnCreateOnly" => false, "default" => "canonical:UbuntuServer:16.04.0-LTS:latest"}
  @[JSON::Field(key: "image")]
  property! image : String

  # location => {"type" => "string", "description" => "Azure region to create the virtual machine", "create" => true, "update" => false, "readOnCreateOnly" => false, "default" => "westus"}
  @[JSON::Field(key: "location")]
  property! location : String

  # noPublicIp => {"type" => "boolean", "description" => "Do not create a public IP address for the machine", "create" => true, "update" => false, "readOnCreateOnly" => false}
  @[JSON::Field(key: "noPublicIp")]
  property! no_public_ip : Bool

  # openPort => {"type" => "array[string]", "description" => "Make the specified port number accessible from the Internet", "create" => true, "update" => false, "readOnCreateOnly" => false}
  @[JSON::Field(key: "openPort")]
  property! open_port : Array(String)

  # privateIpAddress => {"type" => "string", "description" => "Specify a static private IP address for the machine", "create" => true, "update" => false, "readOnCreateOnly" => false, "default" => ""}
  @[JSON::Field(key: "privateIpAddress")]
  property! private_ip_address : String

  # resourceGroup => {"type" => "string", "description" => "Azure Resource Group name (will be created if missing)", "create" => true, "update" => false, "readOnCreateOnly" => false, "default" => "docker-machine"}
  @[JSON::Field(key: "resourceGroup")]
  property! resource_group : String

  # size => {"type" => "string", "description" => "Size for Azure Virtual Machine", "create" => true, "update" => false, "readOnCreateOnly" => false, "default" => "Standard_A2"}
  @[JSON::Field(key: "size")]
  property! size : String

  # sshUser => {"type" => "string", "description" => "Username for SSH login", "create" => true, "update" => false, "readOnCreateOnly" => false, "default" => "docker-user"}
  @[JSON::Field(key: "sshUser")]
  property! ssh_user : String

  # staticPublicIp => {"type" => "boolean", "description" => "Assign a static public IP address to the machine", "create" => true, "update" => false, "readOnCreateOnly" => false}
  @[JSON::Field(key: "staticPublicIp")]
  property! static_public_ip : Bool

  # storageType => {"type" => "string", "description" => "Type of Storage Account to host the OS Disk for the machine", "create" => true, "update" => false, "readOnCreateOnly" => false, "default" => "Standard_LRS"}
  @[JSON::Field(key: "storageType")]
  property! storage_type : String

  # subnet => {"type" => "string", "description" => "Azure Subnet Name to be used within the Virtual Network", "create" => true, "update" => false, "readOnCreateOnly" => false, "default" => "docker-machine"}
  @[JSON::Field(key: "subnet")]
  property! subnet : String

  # subnetPrefix => {"type" => "string", "description" => "Private CIDR block to be used for the new subnet, should comply RFC 1918", "create" => true, "update" => false, "readOnCreateOnly" => false, "default" => "192.168.0.0/16"}
  @[JSON::Field(key: "subnetPrefix")]
  property! subnet_prefix : String

  # subscriptionId => {"type" => "string", "description" => "Azure Subscription ID", "create" => true, "update" => false, "readOnCreateOnly" => false, "default" => ""}
  @[JSON::Field(key: "subscriptionId")]
  property! subscription_id : String

  # usePrivateIp => {"type" => "boolean", "description" => "Use private IP address of the machine to connect", "create" => true, "update" => false, "readOnCreateOnly" => false}
  @[JSON::Field(key: "usePrivateIp")]
  property! use_private_ip : Bool

  # vnet => {"type" => "string", "description" => "Azure Virtual Network name to connect the virtual machine (in [resourcegroup:]name format)", "create" => true, "update" => false, "readOnCreateOnly" => false, "default" => "docker-machine-vnet"}
  @[JSON::Field(key: "vnet")]
  property! vnet : String
end
