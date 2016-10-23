# encoding: utf-8
# frozen_string_literal: true

require 'essay/abstract_features'

module Essay
  class AssociationFeatures < AbstractFeatures
    attr_reader :association
    alias this_association association

    def initialize(env)
      super
      @association = env.fetch(:association)
    end
  end
end
