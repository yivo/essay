module Essay
  module Extension
    def hook(&block)
      @_extension_hook = block
    end

    def self.extended(ext)
      ext.extend(ActiveSupport::Concern)
      ext.included do |model|
        if ext.instance_variable_defined?(:@_extension_hook)
          model.class_eval do
            block     = ext.instance_variable_get(:@_extension_hook)
            behaviour = model.instance_variable_get(:@_behaviour_stack).last
            block[*Essay.extension_hook_args(model, behaviour)]
          end
        end
      end
    end
  end
end