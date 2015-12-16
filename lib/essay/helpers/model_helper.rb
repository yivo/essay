module Essay
  module ModelHelper
    def model_class
      @model_class
    end

    def model_traits
      model_class.traits
    end

    def model_features
      model_class.features
    end
  end
end