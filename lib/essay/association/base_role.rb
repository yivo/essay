require 'essay/abstract_role'
require 'essay/helpers/association_helper'

module Essay
  class AssociationRoles::Base < AbstractRole
    include AssociationHelper

    def initialize(env)
      super
      @association_name = env.fetch(:association_name)
    end
  end
end