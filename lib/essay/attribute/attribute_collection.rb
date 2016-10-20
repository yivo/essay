# encoding: utf-8
# frozen_string_literal: true

require 'essay/abstract_collection'

module Essay
  class AttributeCollection < AbstractCollection
    def construct_features(attr_name)
      Essay::AttributeFeatures.new(@env.merge(attribute_name: attr_name))
    end

    protected :construct_features
  end
end
