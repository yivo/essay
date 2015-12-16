require 'essay/abstract_roles'
require 'essay/helpers/association_helper'

module Essay
  class AssociationRoles < AbstractRoles
    include AssociationHelper

    def initialize(env)
      super
      @association_name = env.fetch(:association_name)
    end
  end
end