require "json"

class Rancher::SetProjectMembersInput < Rancher::Object
  include JSON::Serializable

  # members => {"type" => "array[projectMember]", "description" => nil, "create" => true, "update" => false, "required" => true, "readOnCreateOnly" => false, "minLength" => 1}
  @[JSON::Field(key: "members")]
  property! members : Array(ProjectMember)
end
