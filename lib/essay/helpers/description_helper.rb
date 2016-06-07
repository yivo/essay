# frozen_string_literal: true
module Essay
  module DescriptionHelper
    extend ActiveSupport::Concern

    included do
      class_attribute :description, instance_predicate: false, instance_writer: false
    end

    module ClassMethods
      def describe(description)
        self.description = description
      end
    end
  end
end
