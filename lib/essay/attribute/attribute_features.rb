# encoding: utf-8
# frozen_string_literal: true

require 'essay/abstract_features'
require 'essay/helpers/attribute_helper'

module Essay
  class AttributeFeatures < AbstractFeatures
    include AttributeHelper

    def initialize(env)
      super
      @attribute_name = env.fetch(:attribute_name)
    end
  end
end
