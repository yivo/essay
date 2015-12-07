module Essay
  class ModelBehaviours < BehaviourSet
    def initialize(model_class)
      super(model_class)
    end

    def attributes
      storage[:attributes] ||= AttributeCollection.new(model_class: model_class)
    end

    def associations
      storage[:associations] ||= AssociationCollection.new(model_class: model_class)
    end

    def to_hash
      super.tap do |hash|
        hash[:attributes]   ||= attributes.to_hash
        hash[:associations] ||= associations.to_hash
      end
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