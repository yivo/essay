module Essay
  class AttributeCollection < Confo::Collection
    protected
      def config_class(*)
        AttributeBehaviours
      end

      def construct_config(config_class, id)
        config_class.new(id)
      end
  end

  class AssociationCollection < Confo::Collection
    protected
      def config_class(*)
        AssociationBehaviours
      end

      def construct_config(config_class, id)
        config_class.new(id)
      end
  end
end