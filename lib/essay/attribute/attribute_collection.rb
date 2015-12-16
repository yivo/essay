require 'essay/abstract_collection'

module Essay
  class AttributeCollection < AbstractCollection
  protected
    def construct_roles(attr_name)
      Essay::AttributeRoles.new(@env.merge(attribute_name: attr_name))
    end
  end
end