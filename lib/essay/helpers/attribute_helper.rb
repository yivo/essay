# frozen_string_literal: true
module Essay
  module AttributeHelper
    def attribute_name
      @attribute_name
    end

    def attribute_traits
      model_traits.attributes[attribute_name]
    end

    alias attribute attribute_traits
    alias this_attribute attribute
  end
end
