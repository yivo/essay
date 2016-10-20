# encoding: utf-8
# frozen_string_literal: true

module Essay
  module SerializeHelper
    extend ActiveSupport::Concern

    module ClassMethods
      def serialize(options = {}, &block)
        serialize_steps << { block: block, options: options }
      end

      def serialize_steps
        @serialize_steps ||= []
      end
    end

    def to_hash
      serialize_steps.each_with_object({}) do |step, result|
        condition = step.fetch(:options)[:if]
        if !condition || try(condition)
          result.merge!(instance_exec(&step.fetch(:block)))
        end
      end
    end

    def serialize_steps
      self.class.serialize_steps
    end
  end
end
