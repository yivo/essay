# encoding: utf-8
# frozen_string_literal: true

require 'essay/abstract_collection'

module Essay
  class AssociationCollection < AbstractCollection
    def construct_features(assoc_name)
      Essay::AssociationFeatures.new(@env.merge(association_name: assoc_name))
    end

    protected :construct_features
  end
end
