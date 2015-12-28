require 'essay/abstract_role'
require 'essay/helpers/attribute_helper'

module Essay
  class AttributeRoles::Base < AbstractRole
    include AttributeHelper

    def initialize(env)
      super
      @attribute_name = env.fetch(:attribute_name)
    end
  end
end