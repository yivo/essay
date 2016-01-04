require 'essay/abstract_feature'
require 'essay/helpers/association_helper'

module Essay
  class AssociationFeatures::Base < AbstractFeature
    include AssociationHelper

    def initialize(env)
      super
      @association_name = env.fetch(:association_name)
    end
  end
end