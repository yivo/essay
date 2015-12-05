module Essay
  class EntityBehaviours < Confo::Collection

    alias is define

    protected
      def config_class(*)
        Behaviour
      end
  end

  class ModelBehaviours < EntityBehaviours
    def initialize(*)
      super
      set :attributes,    AttributeCollection.new
      set :associations,  AssociationCollection.new
    end

    def attributes
      storage[:attributes]
    end

    def associations
      storage[:associations]
    end
  end

  class AttributeBehaviours < EntityBehaviours
  end

  class AssociationBehaviours < EntityBehaviours
  end
end