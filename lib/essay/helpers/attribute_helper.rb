module Essay
  module AttributeHelper
    def attribute_name
      @attribute_name
    end

    def attribute_traits
      model_traits.attributes[attribute_name]
    end
  end
end