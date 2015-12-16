module Essay
  module AssociationHelper
    def association_name
      @association_name
    end

    def association_traits
      model_traits.associations[association_name]
    end
  end
end