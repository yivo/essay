module Essay
  module DescribesModel
    def initialize(*)
      super
      unless model_class.kind_of?(Class) and model_class < ActiveRecord::Base
        raise ArgumentError, 'Model class not given or invalid'
      end
    end

    def model_class
      settings[:model_class]
    end
  end

  module DescribesAttribute
    def initialize(*)
      super
      settings[:attribute_name] ||= settings[:component_name]
      unless attribute_name
        raise ArgumentError, 'No attribute name given'
      end
    end

    def attribute_name
      settings[:attribute_name]
    end
  end

  module DescribesAssociation
    def initialize(*)
      super
      settings[:association_name] ||= settings[:component_name]
      unless association_name
        raise ArgumentError, 'No association name given'
      end
    end

    def association_name
      settings[:association_name]
    end
  end
end