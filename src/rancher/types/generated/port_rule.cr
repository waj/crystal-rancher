require "json"

class Rancher::PortRule < Rancher::Object
  include JSON::Serializable

  # backendName => {"type" => "string", "transform" => "", "description" => nil, "create" => true, "update" => false, "nullable" => true, "readOnCreateOnly" => false}
  @[JSON::Field(key: "backendName")]
  property! backend_name : String

  # environment => {"type" => "string", "transform" => "", "description" => nil, "create" => true, "update" => false, "nullable" => true, "readOnCreateOnly" => false}
  @[JSON::Field(key: "environment")]
  property! environment : String

  # hostname => {"type" => "string", "transform" => "", "description" => nil, "create" => true, "update" => false, "nullable" => true, "readOnCreateOnly" => false}
  @[JSON::Field(key: "hostname")]
  property! hostname : String

  # path => {"type" => "string", "transform" => "", "description" => nil, "create" => true, "update" => false, "nullable" => true, "readOnCreateOnly" => false}
  @[JSON::Field(key: "path")]
  property! path : String

  # priority => {"type" => "int", "transform" => "", "description" => nil, "create" => true, "update" => false, "nullable" => true, "readOnCreateOnly" => false, "min" => 1}
  @[JSON::Field(key: "priority")]
  property! priority : Int32

  # protocol => {"type" => "enum", "transform" => "", "description" => nil, "create" => true, "update" => false, "readOnCreateOnly" => false, "options" => ["http", "tcp", "https", "tls", "sni", "udp"], "default" => "http"}
  @[JSON::Field(key: "protocol")]
  property! protocol : String

  # region => {"type" => "string", "transform" => "", "description" => nil, "create" => true, "update" => false, "nullable" => true, "readOnCreateOnly" => false}
  @[JSON::Field(key: "region")]
  property! region : String

  # selector => {"type" => "string", "transform" => "", "description" => nil, "create" => true, "update" => false, "nullable" => true, "readOnCreateOnly" => false}
  @[JSON::Field(key: "selector")]
  property! selector : String

  # serviceId => {"type" => "reference[service]", "transform" => "", "description" => nil, "create" => true, "update" => false, "nullable" => true, "readOnCreateOnly" => false}
  # UNSUPPORTED

  # sourcePort => {"type" => "int", "transform" => "", "description" => nil, "create" => true, "update" => false, "nullable" => true, "required" => true, "readOnCreateOnly" => false, "min" => 1, "max" => 65535}
  @[JSON::Field(key: "sourcePort")]
  property! source_port : Int32

  # targetPort => {"type" => "int", "transform" => "", "description" => nil, "create" => true, "update" => false, "nullable" => true, "readOnCreateOnly" => false, "min" => 1, "max" => 65535}
  @[JSON::Field(key: "targetPort")]
  property! target_port : Int32

  # weight => {"type" => "int", "transform" => "", "description" => nil, "create" => true, "update" => false, "nullable" => true, "readOnCreateOnly" => false, "min" => 0, "max" => 256}
  @[JSON::Field(key: "weight")]
  property! weight : Int32
end
