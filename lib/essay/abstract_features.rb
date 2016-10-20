# encoding: utf-8
# frozen_string_literal: true

require 'essay/helpers/model_helper'
require 'essay/helpers/feature_helper'
require 'essay/helpers/serialize_helper'

module Essay
  class AbstractFeatures
    include ModelHelper
    include FeatureHelper
    include SerializeHelper

    attr_reader :env

    def initialize(env)
      @env         = env
      @model_class = env.fetch(:model_class)
    end
  end
end
