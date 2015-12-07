module Essay
  class BehaviourNotSpecified < NotImplementedError
  end

  class BehaviourSet < Confo::Collection
    include DescribesModel

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

    def guess_behaviour_class(behaviour_name)
      "Essay::#{behaviour_name.to_s.camelize}Behaviour".safe_constantize
    end
  end
end