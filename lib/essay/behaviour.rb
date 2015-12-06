module Essay
  class Behaviour < Confo::Config
    attr_reader :model_class

    option_accessor :name

    def initialize(model_class)
      @model_class = model_class
      super()
    end
  end

  class ModelBehaviour < Behaviour
    def initialize(*)
      super
      extend_model
    end

    def extend_model
      extensions = "#{self.class.name}::#{name.to_s.camelize}::Extensions".safe_constantize
      if extensions.kind_of?(Module)
        model_class.include(extensions)
      end
    end
  end

  class AttributeBehaviour < Behaviour
    def initialize(model_class, attribute_name)
      @attribute_name = attribute_name
      super(model_class)
    end
  end

  class AssociationBehaviour < Behaviour
    def initialize(model_class, association_name)
      @association_name = association_name
      super(model_class)
    end
  end
end