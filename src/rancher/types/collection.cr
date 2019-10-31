require "json"
require "./object"
require "../client"

class Rancher::Collection(T) < Rancher::Object
  include JSON::Serializable

  @[JSON::Field(key: "data")]
  property data : Array(T)

  def with_client(client : Rancher::Client)
    @data.each do |item|
      item.client = client
    end

    self
  end
end
