require 'essay/abstract_roles'
require 'essay/helpers/attribute_helper'

module Essay
  class AttributeRoles < AbstractRoles
    include AttributeHelper

    def initialize(env)
      super
      @attribute_name = env.fetch(:attribute_name)
    end
  end
end