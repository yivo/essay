# encoding: utf-8
# frozen_string_literal: true

require 'essay/abstract_collection'

module Essay
  class AssociationCollection < AbstractCollection
    def construct_features(name)
      Essay::AssociationFeatures.new(env.merge(association: traits.associations.fetch(name)))
    end

    protected :construct_features
  end
end
