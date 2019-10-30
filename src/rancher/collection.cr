require "json"
require "./object"
require "./client"

class Rancher::Collection(T) < Rancher::Object
  JSON.mapping(
    data: Array(T)
  )

  def with_client(client : Rancher::Client)
    @data.each do |item|
      item.client = client
    end

    self
  end
end
