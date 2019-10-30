require "./client"

class Rancher::Object
  property! client : Client

  def with_client(@client : Client)
    self
  end
end
