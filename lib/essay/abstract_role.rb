require 'essay/helpers/model_helper'
require 'essay/helpers/serialize_helper'

module Essay
  class AbstractRole
    include ModelHelper
    include SerializeHelper

    class_attribute :description, instance_predicate: false, instance_accessor: false

    class << self
      def describe(description)
        self.description = description
      end
    end

    def initialize(env)
      @env         = env
      @model_class = env.fetch(:model_class)
    end
  end
end