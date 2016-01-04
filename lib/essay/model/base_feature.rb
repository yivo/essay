require 'essay/helpers/model_helper'
require 'essay/helpers/serialize_helper'

module Essay
  class ModelFeatures::Base
    include SerializeHelper
    include ModelHelper

    def initialize(env)
      @env         = env
      @model_class = env.fetch(:model_class)
    end
  end
end