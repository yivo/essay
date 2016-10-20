# encoding: utf-8
# frozen_string_literal: true

require 'essay/helpers/model_helper'

module Essay
  class AbstractCollection
    include ModelHelper

    def initialize(env)
      @env          = env
      @model_class  = env.fetch(:model_class)
      @features_for = {}
    end

    def [](name)
      @features_for[convert_key(name)] ||= construct_features(name)
    end

    def load_contents

    end

    def to_hash
      @features_for.each_with_object({}) do |(k, v), memo|
        memo[k] = v.to_hash
      end
    end

  protected
    def construct_features(name)

    end

    def convert_key(key)
      key.kind_of?(Symbol) ? key : key.to_sym
    end
  end
end
