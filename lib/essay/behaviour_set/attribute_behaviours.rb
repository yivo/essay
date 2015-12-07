module Essay
  class AttributeBehaviours < BehaviourSet
    include DescribesAttribute

  protected
    def config_class(behaviour_name)
      guess_behaviour_class(behaviour_name) or AttributeBehaviour
    end

    def construct_config(behaviour_class)
      behaviour_class.new settings.slice(:model_class, :attribute_name)
    end
  end
end