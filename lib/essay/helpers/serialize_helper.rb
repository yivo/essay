module Essay
  module SerializeHelper
    extend ActiveSupport::Concern

    included do
      class_attribute :serialize_steps, instance_writer: false
      self.serialize_steps = []
    end

    module ClassMethods
      def serialize(options = {}, &block)
        serialize_steps << { block: block, options: options }
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
  end
end