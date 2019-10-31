require "json"

class Rancher::ProcessPool < Rancher::Object
  include JSON::Serializable

  # activeTasks => {"type" => "int", "description" => nil, "create" => false, "update" => false, "readOnCreateOnly" => false}
  @[JSON::Field(key: "activeTasks")]
  property! active_tasks : Int32

  # completedTasks => {"type" => "int", "description" => nil, "create" => false, "update" => false, "readOnCreateOnly" => false}
  @[JSON::Field(key: "completedTasks")]
  property! completed_tasks : Int32

  # maxPoolSize => {"type" => "int", "description" => nil, "create" => false, "update" => false, "readOnCreateOnly" => false}
  @[JSON::Field(key: "maxPoolSize")]
  property! max_pool_size : Int32

  # minPoolSize => {"type" => "int", "description" => nil, "create" => false, "update" => false, "readOnCreateOnly" => false}
  @[JSON::Field(key: "minPoolSize")]
  property! min_pool_size : Int32

  # name => {"type" => "string", "description" => nil, "create" => false, "update" => false, "readOnCreateOnly" => false}
  @[JSON::Field(key: "name")]
  property! name : String

  # poolSize => {"type" => "int", "description" => nil, "create" => false, "update" => false, "readOnCreateOnly" => false}
  @[JSON::Field(key: "poolSize")]
  property! pool_size : Int32

  # queueRemainingCapacity => {"type" => "int", "description" => nil, "create" => false, "update" => false, "readOnCreateOnly" => false}
  @[JSON::Field(key: "queueRemainingCapacity")]
  property! queue_remaining_capacity : Int32

  # queueSize => {"type" => "int", "description" => nil, "create" => false, "update" => false, "readOnCreateOnly" => false}
  @[JSON::Field(key: "queueSize")]
  property! queue_size : Int32

  # rejectedTasks => {"type" => "int", "description" => nil, "create" => false, "update" => false, "readOnCreateOnly" => false}
  @[JSON::Field(key: "rejectedTasks")]
  property! rejected_tasks : Int32
end
