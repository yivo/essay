module Essay
  module Marking
    extend ActiveSupport::Concern

    module ClassMethods
      def behaviours(thing = nil)
        @behaviours ||= ModelBehaviours.new

        if thing
          if column_names.include?(thing.to_s)
            @behaviours.attributes[thing]

          elsif reflections[thing.to_s]
            @behaviours.associations[thing]
          end

        else
          @behaviours
        end
      end

      def describe(thing = nil, &block)
        behaviours(thing).configure(&block)
      end
    end
  end
end