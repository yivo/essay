# encoding: utf-8
# frozen_string_literal: true

module Essay
  module FeatureHelper
    def is(thing)
      try(thing)
    end

    def not(thing)
      try(thing)
    end

    def with(thing, &block)
      obj = try(thing)
      block.call(obj) if obj
    end
  end
end
