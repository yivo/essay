require 'essay/helpers/model_helper'

module Essay
  class AbstractRoles
    include ModelHelper

    def initialize(env)
      @env         = env
      @model_class = env.fetch(:model_class)
    end
  end
end