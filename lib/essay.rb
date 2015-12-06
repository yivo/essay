require 'active_support/all'
require 'confo-config'

require 'essay/behaviour'

require 'essay/behaviour_set'
require 'essay/model_behaviours'
require 'essay/attribute_behaviours'
require 'essay/association_behaviours'

require 'essay/component_collection'
require 'essay/collections'

require 'essay/extension'
require 'essay/marking'
require 'essay/callbacks'

ActiveRecord::Base.include(Essay::Marking)
ActiveRecord::Base.include(Essay::Callbacks)

module Essay
  class << self
    def include_extension(model_class, behaviour)
      extension = "#{behaviour.class.name}::Extension".safe_constantize
      if extension.kind_of?(Extension)
                                    # Always make a copy so all classes will have their own stack
        model_class.instance_eval { @_behaviour_stack = (@_behaviour_stack || []) + [behaviour] }
        model_class.include(extension)
        model_class.instance_eval { @_behaviour_stack = @_behaviour_stack[0...-1] }
      end
    end

    def extension_hook_args(model_class, behaviour)
      case behaviour
        when ModelBehaviour       then [model_class, behaviour]
        when AttributeBehaviour   then [model_class, behaviour.attribute_name, behaviour]
        when AssociationBehaviour then [model_class, behaviour.association_name, behaviour]
        else                           [model_class]
      end
    end
  end
end