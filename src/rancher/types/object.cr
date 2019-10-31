require "json"
require "../client"

class Rancher::Object
  @[JSON::Field(ignore: true)]
  property! client : Client

  @[JSON::Field(key: "id")]
  property! id : String

  def with_client(@client : Client)
    self
  end
end
