module Essay
  class ModelBehaviours < BehaviourSet

    def initialize(model_class)
      super(model_class)
      set :attributes,    AttributeCollection.new(model_class)
      set :associations,  AssociationCollection.new(model_class)
    end

    def attributes
      storage[:attributes]
    end

    def associations
      storage[:associations]
    end

    protected
      def config_class(behaviour_name)
        guess_behaviour_class(behaviour_name) or ModelBehaviour
      end

      def construct_config(config_class)
        config_class.new(model_class)
      end
  end
end