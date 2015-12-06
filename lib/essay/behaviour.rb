module Essay
  class Behaviour < Confo::Config
    attr_reader :model_class

    option_accessor :name

    def initialize(model_class)
      @model_class = model_class
      super()
      model_class.described_behaviour(self)
    end
  end

  class ModelBehaviour < Behaviour
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