require "http/client"
require "./config"
require "./types/**"

class Rancher::Client
  def initialize(@config : Config = Config.from_env)
    @client = HTTP::Client.new(URI.parse(config.url))
    @client.basic_auth(config.access_key, config.secret_key)
  end

  def list_projects : Collection(Project)
    Collection(Project)
      .from_json(get("/projects").body)
      .with_client(self)
  end

  def get_project(id : String) : Project
    Project
      .from_json(get("/projects/#{id}").body)
      .with_client(self)
  end

  def get_load_balancer_services(project_id : String) : Collection(LoadBalancerService)
    Collection(LoadBalancerService)
      .from_json(get("/projects/#{project_id}/loadbalancerservices").body)
      .with_client(self)
  end

  private def get(path : String)
    @client.get(@config.url + path)
  end

  def inspect(io)
    io << "Rancher::Client(#{@config.url})"
  end
end
