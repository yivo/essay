module Essay
  class AssociationBehaviours < BehaviourSet
    attr_reader :association_name

    def initialize(model_class, association_name)
      @association_name = association_name
      super(model_class)
    end

    protected
      def config_class(behaviour_name)
        guess_behaviour_class(behaviour_name) or AssociationBehaviour
      end

      def construct_config(config_class)
        config_class.new(model_class, association_name)
      end
  end
end