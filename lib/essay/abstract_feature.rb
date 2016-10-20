# encoding: utf-8
# frozen_string_literal: true

require 'essay/helpers/model_helper'
require 'essay/helpers/serialize_helper'
require 'essay/helpers/description_helper'

module Essay
  class AbstractFeature
    include ModelHelper
    include SerializeHelper
    include DescriptionHelper

    def initialize(env)
      @env         = env
      @model_class = env.fetch(:model_class)
    end
  end
end
