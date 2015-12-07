module Essay
  class AttributeCollection < ComponentCollection
  protected
    def config_class
      AttributeBehaviours
    end
  end

  class AssociationCollection < ComponentCollection
  protected
    def config_class
      AssociationBehaviours
    end
  end
end