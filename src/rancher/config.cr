class Rancher::Config
  getter url : String
  getter access_key : String
  getter secret_key : String

  def initialize(@url, @access_key, @secret_key)
  end

  def self.from_env
    url =
      ENV["RANCHER_URL"]? || ENV["CATTLE_CONFIG_URL"]? ||
        raise "Missing RANCHER_URL or CATTLE_CONFIG_URL environment variable"

    access_key =
      ENV["RANCHER_ACCESS_KEY"]? || ENV["CATTLE_ACCESS_KEY"]? ||
        raise "Missing RANCHER_ACCESS_KEY or CATTLE_ACCESS_KEY environment variable"

    secret_key =
      ENV["RANCHER_SECRET_KEY"]? || ENV["CATTLE_SECRET_KEY"]? ||
        raise "Missing RANCHER_SECRET_KEY or CATTLE_SECRET_KEY environment variable"

    new(url, access_key, secret_key)
  end
end
