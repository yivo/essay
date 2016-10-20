# encoding: utf-8
# frozen_string_literal: true

module Essay
  module FeatureHelper
    def is(thing)
      send(thing)
    end

    def not(thing)
      send(thing)
    end

    def with(thing, &block)
      obj = send(thing)
      block.call(obj) if obj
    end
  end
end
