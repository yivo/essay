require 'essay/helpers/model_helper'

module Essay
  class ModelFeatures::Base
    include ModelHelper

    def initialize(env)
      @env         = env
      @model_class = env.fetch(:model_class)
    end

    def to_hash
      {}
    end
  end
end