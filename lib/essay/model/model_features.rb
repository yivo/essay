require 'essay/helpers/model_helper'
require 'essay/helpers/serialize_helper'

module Essay
  class ModelFeatures
    include ModelHelper
    include SerializeHelper

    attr_reader :env

    def initialize(env)
      @env         = env
      @model_class = env.fetch(:model_class)
    end

    def with(feature_name, &block)
      block.call(obj) if obj = send(feature_name)
    end
  end
end