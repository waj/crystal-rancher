require "../config"
require "json"
require "ecr"
require "compiler/crystal/tools/formatter"

class Template
  @schema : JSON::Any
  @all_types : Set(String)

  def initialize(@schema, @all_types)
  end

  def crystal_type(type_name : String)
    if @all_types.includes?(type_name)
      type_name.camelcase
    else
      case type_name
      when "string", "enum" then "String"
      when "int"            then "Int32"
      when "date"           then "Time"
      when "boolean"        then "Bool"
      when /array\[(.*)\]/
        element_type = crystal_type($1)
        return nil unless element_type
        "Array(#{element_type})"
      else
        return nil
      end
    end
  end

  def crystal_type(schema_type : JSON::Any)
    type_name = schema_type["type"].as_s
    type = crystal_type(type_name)
    return nil unless type

    # if schema_type["nullable"]?
    #   type += "?"
    # end

    type
  end

  ECR.def_to_s "#{__DIR__}/template.ecr"
end

client = Rancher::Client.new
schemas_json = client.get("#{client.config.url}/schemas").body
schemas = JSON.parse(schemas_json)

all_types = Set.new(schemas["data"].as_a.map { |type| type["id"].as_s })

schemas["data"].as_a.each do |type|
  template = Template.new(type, all_types)
  source = Crystal.format(template.to_s)

  File.write("#{__DIR__}/../types/generated/#{type["id"].to_s.underscore}.cr", source)
end
