require "json"

class Rancher::Databasechangelog < Rancher::Object
  include JSON::Serializable

  # author => {"type" => "string", "description" => nil, "create" => false, "update" => false, "nullable" => true, "readOnCreateOnly" => false, "maxLength" => 255}
  @[JSON::Field(key: "author")]
  property! author : String

  # comments => {"type" => "string", "description" => nil, "create" => false, "update" => false, "nullable" => true, "readOnCreateOnly" => false, "maxLength" => 255}
  @[JSON::Field(key: "comments")]
  property! comments : String

  # dateexecuted => {"type" => "date", "description" => nil, "create" => false, "update" => false, "readOnCreateOnly" => false, "maxLength" => 255}
  @[JSON::Field(key: "dateexecuted")]
  property! dateexecuted : Time

  # description => {"type" => "string", "description" => nil, "create" => false, "update" => false, "nullable" => true, "readOnCreateOnly" => false, "maxLength" => 255}
  @[JSON::Field(key: "description")]
  property! description : String

  # exectype => {"type" => "string", "description" => nil, "create" => false, "update" => false, "nullable" => true, "readOnCreateOnly" => false, "maxLength" => 10}
  @[JSON::Field(key: "exectype")]
  property! exectype : String

  # filename => {"type" => "string", "description" => nil, "create" => false, "update" => false, "nullable" => true, "readOnCreateOnly" => false, "maxLength" => 255}
  @[JSON::Field(key: "filename")]
  property! filename : String

  # liquibase => {"type" => "string", "description" => nil, "create" => false, "update" => false, "nullable" => true, "readOnCreateOnly" => false, "maxLength" => 20}
  @[JSON::Field(key: "liquibase")]
  property! liquibase : String

  # md5sum => {"type" => "string", "description" => nil, "create" => false, "update" => false, "nullable" => true, "readOnCreateOnly" => false, "maxLength" => 35}
  @[JSON::Field(key: "md5sum")]
  property! md5sum : String

  # orderexecuted => {"type" => "int", "description" => nil, "create" => false, "update" => false, "readOnCreateOnly" => false, "maxLength" => 255}
  @[JSON::Field(key: "orderexecuted")]
  property! orderexecuted : Int32

  # tag => {"type" => "string", "description" => nil, "create" => false, "update" => false, "nullable" => true, "readOnCreateOnly" => false, "maxLength" => 255}
  @[JSON::Field(key: "tag")]
  property! tag : String
end
