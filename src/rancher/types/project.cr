require "./generated/project"

class Rancher::Project
  def load_balancer_services
    client.get_load_balancer_services(id)
  end
end
