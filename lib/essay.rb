require 'active_support/all'
require 'active_record'
require 'activerecord-traits'

require 'essay/model/model_features'
require 'essay/model/base_feature'

require 'essay/attribute/attribute_collection'
require 'essay/attribute/attribute_roles'
require 'essay/attribute/base_role'

require 'essay/association/association_collection'
require 'essay/association/association_roles'
require 'essay/association/base_role'

class ActiveRecord::Base
  class << self
    def features
      @features_for_model ||= Essay::ModelFeatures.new(model_class: self)
    end

    def attribute_roles(attr_name = nil)
      @roles_for_attrs ||= Essay::AttributeCollection.new(model_class: self)
      attr_name ? @roles_for_attrs[attr_name] : @roles_for_attrs
    end

    def association_roles(assoc_name = nil)
      @roles_for_assocs ||= Essay::AssociationCollection.new(model_class: self)
      assoc_name ? @roles_for_assocs[assoc_name] : @roles_for_assocs
    end
  end
end