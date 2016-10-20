# frozen_string_literal: true
require 'active_support/all'
require 'active_record'

require 'essay/model/model_features'
require 'essay/model/base_feature'

require 'essay/attribute/attribute_collection'
require 'essay/attribute/attribute_features'
require 'essay/attribute/base_feature'

require 'essay/association/association_collection'
require 'essay/association/association_features'
require 'essay/association/base_feature'

class ActiveRecord::Base
  class << self
    def features
      @features_for_model ||= Essay::ModelFeatures.new(model_class: self)
    end

    def attribute_features(attr_name = nil)
      @features_for_attrs ||= Essay::AttributeCollection.new(model_class: self)
      attr_name ? @features_for_attrs[attr_name] : @features_for_attrs
    end

    def association_features(assoc_name = nil)
      @features_for_assocs ||= Essay::AssociationCollection.new(model_class: self)
      assoc_name ? @features_for_assocs[assoc_name] : @features_for_assocs
    end

    def essay_for(attr_or_assoc)
      raise NotImplmentedError
    end
  end
end
