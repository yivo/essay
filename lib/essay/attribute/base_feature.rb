# encoding: utf-8
# frozen_string_literal: true

require 'essay/abstract_feature'

module Essay
  class AttributeFeatures::Base < AbstractFeature
    attr_reader :attribute
    alias this_attribute attribute

    def initialize(env)
      super
      @attribute = env.fetch(:attribute)
    end
  end
end
