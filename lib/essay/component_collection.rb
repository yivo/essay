module Essay
  class BehaviourSetNotSpecified < NotImplementedError
  end

  class ComponentCollection < Confo::Collection

    attr_reader :model_class

    def initialize(model_class)
      super()
      @model_class = model_class
    end

    protected
      def config_class
        raise BehaviourSetNotSpecified, 'There was no BehaviourSet class specified'
      end

      def construct_config(config_class, component_name)
        config_class.new(model_class, component_name)
      end
  end
end