module Essay
  module Marking
    extend ActiveSupport::Concern

    module ClassMethods
      def behaviours(thing = nil, &block)
        if @behaviours and not has_own_behaviours?
          @behaviours = @behaviours.with_new_settings(model_class: self)
        end

        @behaviours ||= ModelBehaviours.new(model_class: self)

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

      def has_own_behaviours?
        @behaviours and self == @behaviours.model_class
      end

      def describe(thing = nil, &block)
        behaviours(thing).configure(&block)
      end
    end
  end
end