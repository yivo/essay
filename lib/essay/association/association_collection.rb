require 'essay/abstract_collection'

module Essay
  class AssociationCollection < AbstractCollection
  protected
    def construct_roles(assoc_name)
      Essay::AssociationRoles.new(@env.merge(association_name: assoc_name))
    end
  end
end