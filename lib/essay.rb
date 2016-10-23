# encoding: utf-8
# frozen_string_literal: true

require 'active_support/all'
require 'active_record'
require 'activerecord-traits'

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
      @model_features ||= Essay::ModelFeatures.new(active_record: self)
    end

    def attribute_features(attribute = nil)
      @attributes_features ||= Essay::AttributeCollection.new(active_record: self)
      attribute ? @attributes_features[attribute] : @attributes_features
    end

    def association_features(association = nil)
      @associations_features ||= Essay::AssociationCollection.new(active_record: self)
      association ? @associations_features[association] : @associations_features
    end
  end
end
