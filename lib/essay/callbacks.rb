module Essay
  module Callbacks
    extend ActiveSupport::Concern

    module ClassMethods
      def described_behaviour(behaviour)
        Essay.include_extension(self, behaviour)
      end
    end
  end
end