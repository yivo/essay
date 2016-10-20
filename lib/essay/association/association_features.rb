# encoding: utf-8
# frozen_string_literal: true

require 'essay/abstract_features'
require 'essay/helpers/association_helper'

module Essay
  class AssociationFeatures < AbstractFeatures
    include AssociationHelper

    def initialize(env)
      super
      @association_name = env.fetch(:association_name)
    end
  end
end
