module Essay
  class AttributeBehaviours < BehaviourSet
    attr_reader :attribute_name

    def initialize(model_class, attribute_name)
      @attribute_name = attribute_name
      super(model_class)
    end

    protected
      def config_class
        AttributeBehaviour
      end

      def construct_config(config_class)
        config_class.new(model_class, attribute_name)
      end
  end
end