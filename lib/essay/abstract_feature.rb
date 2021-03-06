# encoding: utf-8
# frozen_string_literal: true

require 'essay/helpers/model_helper'
require 'essay/helpers/serialize_helper'

module Essay
  class AbstractFeature
    include ModelHelper
    include SerializeHelper

    attr_reader :env

    def initialize(env)
      @env           = env
      @active_record = env.fetch(:active_record)
    end
  end
end
