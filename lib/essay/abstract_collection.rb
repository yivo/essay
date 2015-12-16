require 'essay/helpers/model_helper'

module Essay
  class AbstractCollection
    include ModelHelper

    def initialize(env)
      @env         = env
      @model_class = env.fetch(:model_class)
      @roles_for   = {}
    end

    def [](name)
      @roles_for[convert_key(name)] ||= construct_roles(name)
    end

  protected
    def convert_key(key)
      key.kind_of?(Symbol) ? key : key.to_sym
    end
  end
end