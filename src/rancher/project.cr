require "json"
require "./object"

class Rancher::Project < Rancher::Object
  JSON.mapping(
    id: String,
    name: String,
    state: String
  )

  def load_balancer_services
    client.get_load_balancer_services(id)
  end
end
