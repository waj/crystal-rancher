require "json"

class Rancher::Certificate < Rancher::Object
  include JSON::Serializable

  # accountId => {"type" => "reference[account]", "description" => nil, "create" => false, "update" => false, "nullable" => true, "readOnCreateOnly" => false, "maxLength" => 255}
  # UNSUPPORTED

  # cert => {"type" => "string", "description" => nil, "create" => true, "update" => true, "required" => true, "readOnCreateOnly" => false, "maxLength" => 65535}
  @[JSON::Field(key: "cert")]
  property! cert : String

  # certChain => {"type" => "string", "description" => nil, "create" => true, "update" => true, "nullable" => true, "readOnCreateOnly" => false, "maxLength" => 65535}
  @[JSON::Field(key: "certChain")]
  property! cert_chain : String

  # created => {"type" => "date", "description" => nil, "create" => false, "update" => false, "nullable" => true, "readOnCreateOnly" => false, "maxLength" => 255}
  @[JSON::Field(key: "created")]
  property! created : Time

  # description => {"type" => "string", "description" => nil, "create" => true, "update" => true, "nullable" => true, "readOnCreateOnly" => false, "maxLength" => 1024}
  @[JSON::Field(key: "description")]
  property! description : String

  # key => {"type" => "string", "description" => nil, "create" => true, "update" => true, "required" => true, "readOnCreateOnly" => true, "maxLength" => 65535}
  @[JSON::Field(key: "key")]
  property! key : String

  # kind => {"type" => "string", "description" => nil, "create" => false, "update" => false, "nullable" => true, "readOnCreateOnly" => false, "maxLength" => 255}
  @[JSON::Field(key: "kind")]
  property! kind : String

  # name => {"type" => "string", "description" => nil, "create" => true, "update" => true, "nullable" => true, "unique" => true, "required" => true, "readOnCreateOnly" => false, "maxLength" => 255}
  @[JSON::Field(key: "name")]
  property! name : String

  # removed => {"type" => "date", "description" => nil, "create" => false, "update" => false, "nullable" => true, "readOnCreateOnly" => false, "maxLength" => 255}
  @[JSON::Field(key: "removed")]
  property! removed : Time

  # state => {"type" => "enum", "description" => nil, "create" => false, "update" => false, "readOnCreateOnly" => false, "maxLength" => 128, "options" => ["activating", "active", "removed", "removing", "requested", "updating-active"]}
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

  # certFingerprint => {"type" => "string", "description" => nil, "create" => false, "update" => false, "readOnCreateOnly" => false}
  @[JSON::Field(key: "certFingerprint")]
  property! cert_fingerprint : String

  # CN => {"type" => "string", "description" => nil, "create" => false, "update" => false, "readOnCreateOnly" => false}
  @[JSON::Field(key: "CN")]
  property! cn : String

  # expiresAt => {"type" => "string", "description" => nil, "create" => false, "update" => false, "readOnCreateOnly" => false}
  @[JSON::Field(key: "expiresAt")]
  property! expires_at : String

  # issuer => {"type" => "string", "description" => nil, "create" => false, "update" => false, "readOnCreateOnly" => false}
  @[JSON::Field(key: "issuer")]
  property! issuer : String

  # issuedAt => {"type" => "string", "description" => nil, "create" => false, "update" => false, "readOnCreateOnly" => false}
  @[JSON::Field(key: "issuedAt")]
  property! issued_at : String

  # algorithm => {"type" => "string", "description" => nil, "create" => false, "update" => false, "readOnCreateOnly" => false}
  @[JSON::Field(key: "algorithm")]
  property! algorithm : String

  # version => {"type" => "string", "description" => nil, "create" => false, "update" => false, "readOnCreateOnly" => false}
  @[JSON::Field(key: "version")]
  property! version : String

  # serialNumber => {"type" => "string", "description" => nil, "create" => false, "update" => false, "readOnCreateOnly" => false}
  @[JSON::Field(key: "serialNumber")]
  property! serial_number : String

  # keySize => {"type" => "int", "description" => nil, "create" => false, "update" => false, "readOnCreateOnly" => false}
  @[JSON::Field(key: "keySize")]
  property! key_size : Int64

  # subjectAlternativeNames => {"type" => "array[string]", "description" => nil, "create" => false, "update" => false, "readOnCreateOnly" => false}
  @[JSON::Field(key: "subjectAlternativeNames")]
  property! subject_alternative_names : Array(String)
end
