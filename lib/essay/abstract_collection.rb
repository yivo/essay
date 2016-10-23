# encoding: utf-8
# frozen_string_literal: true

require 'essay/helpers/model_helper'

module Essay
  class AbstractCollection
    include ModelHelper

    attr_reader :env

    def initialize(env)
      @env           = env
      @active_record = env.fetch(:active_record)
      @features_for  = {}
    end

    def [](name)
      @features_for[name.to_sym] ||= construct_features(name)
    end

    def to_hash
      @features_for.each_with_object({}) do |(k, v), memo|
        memo[k] = v.to_hash
      end
    end

  protected
    def construct_features(name)
      raise NotImplementedError
    end
  end
end
