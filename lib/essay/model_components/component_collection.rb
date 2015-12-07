module Essay
  class BehaviourSetNotSpecified < NotImplementedError
  end

  class ComponentCollection < Confo::Collection
    include DescribesModel

  protected
    def config_class
      raise BehaviourSetNotSpecified, 'There was no BehaviourSet class specified'
    end

    def construct_config(config_class, component_name)
      config_class.new(model_class: model_class, component_name: component_name)
    end
  end
end