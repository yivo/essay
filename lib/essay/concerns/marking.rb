module Essay
  module Marking
    extend ActiveSupport::Concern

    module ClassMethods
      def behaviours(thing = nil, &block)
        @behaviours ||= begin
          if superclass < ActiveRecord::Base
            superclass.behaviours.with_new_settings(model_class: self)
          else
            ModelBehaviours.new(model_class: self)
          end
        end

        if thing
          if column_names.include?(thing.to_s)
            @behaviours.attributes[thing]

          elsif reflections[thing.to_s]
            @behaviours.associations[thing]
          end

        else
          @behaviours.instance_eval(&block) if block
          @behaviours
        end
      end

      def describe(thing = nil, &block)
        behaviours(thing).configure(&block)
      end
    end
  end
end