require "json"

class Rancher::ChangeSecretInput < Rancher::Object
  include JSON::Serializable

  # oldSecret => {"type" => "string", "description" => nil, "create" => true, "update" => false, "required" => true, "readOnCreateOnly" => false}
  @[JSON::Field(key: "oldSecret")]
  property! old_secret : String

  # newSecret => {"type" => "string", "description" => nil, "create" => true, "update" => false, "required" => true, "readOnCreateOnly" => false}
  @[JSON::Field(key: "newSecret")]
  property! new_secret : String
end
