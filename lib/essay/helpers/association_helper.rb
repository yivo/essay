# frozen_string_literal: true
module Essay
  module AssociationHelper
    def association_name
      @association_name
    end

    def association_traits
      model_traits.associations[association_name]
    end

    alias association association_traits
    alias this_association association
  end
end
