module Essay
  class AssociationBehaviours < BehaviourSet
    include DescribesAssociation

  protected
    def config_class(behaviour_name)
      guess_behaviour_class(behaviour_name) or AssociationBehaviour
    end

    def construct_config(behaviour_class)
      behaviour_class.new settings.slice(:model_class, :association_name)
    end
  end
end