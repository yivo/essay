# encoding: utf-8
# frozen_string_literal: true

require 'essay/abstract_feature'

module Essay
  class AssociationFeatures::Base < AbstractFeature
    attr_reader :association
    alias this_association association

    def initialize(env)
      super
      @association = env.fetch(:association)
    end
  end
end
