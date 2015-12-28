module Essay
  module ModelHelper
    def model_class
      @model_class
    end

    def model_traits
      model_class.traits
    end

    def model_associations
      model_traits.associations
    end

    alias all_associations model_associations

    def model_attributes
      model_traits.attributes
    end

    alias all_attributes model_attributes

    def model_features
      model_class.features
    end
  end
end