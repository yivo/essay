module Essay
  class ModelBehaviours < BehaviourSet
    def initialize(model_class)
      super(model_class)
      attributes
      associations
    end

    def attributes
      storage[:attributes] ||= AttributeCollection.new(model_class: model_class)
    end

    def associations
      storage[:associations] ||= AssociationCollection.new(model_class: model_class)
    end

  protected
    def config_class(behaviour_name)
      guess_behaviour_class(behaviour_name) or ModelBehaviour
    end

    def construct_config(behaviour_class)
      behaviour_class.new(model_class: model_class)
    end
  end
end