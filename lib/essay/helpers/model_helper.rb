# encoding: utf-8
# frozen_string_literal: true

module Essay
  module ModelHelper
    def active_record
      @active_record
    end

    def traits
      active_record.traits
    end

    def active_record_traits
      traits
    end

    def active_record_attributes
      traits.attributes
    end

    def active_record_associations
      traits.associations
    end

    def active_record_features
      traits.features
    end
  end
end
