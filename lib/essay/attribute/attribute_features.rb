# encoding: utf-8
# frozen_string_literal: true

require 'essay/abstract_features'

module Essay
  class AttributeFeatures < AbstractFeatures
    attr_reader :attribute
    alias this_attribute attribute

    def initialize(env)
      super
      @attribute = env.fetch(:attribute)
    end
  end
end
