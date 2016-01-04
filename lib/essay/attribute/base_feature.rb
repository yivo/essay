require 'essay/abstract_feature'
require 'essay/helpers/attribute_helper'

module Essay
  class AttributeFeatures::Base < AbstractFeature
    include AttributeHelper

    def initialize(env)
      super
      @attribute_name = env.fetch(:attribute_name)
    end
  end
end