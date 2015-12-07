module Essay
  class Behaviour < Confo::Config
    include DescribesModel

    option_accessor :name

    def initialize(*)
      super
      model_class.described_behaviour(self)
    end
  end

  class ModelBehaviour < Behaviour
  end

  class AttributeBehaviour < Behaviour
    include DescribesAttribute
  end

  class AssociationBehaviour < Behaviour
    include DescribesAssociation
  end
end