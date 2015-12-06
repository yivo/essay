module Essay
  class BehaviourNotSpecified < NotImplementedError
  end

  class BehaviourSet < Confo::Collection

    attr_reader :model_class

    def initialize(model_class)
      @model_class = model_class
      super()
    end

    # Return self to allow user to do: is(:foo).is(:bar).is(:baz)
    def define(behaviour, *)
      super
      self
    end

    alias is define

    protected
      def config_class
        raise BehaviourNotSpecified, 'There was no Behaviour class specified'
      end
  end
end