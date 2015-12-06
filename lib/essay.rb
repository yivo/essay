require 'active_support/all'
require 'confo-config'

require 'essay/behaviour'

require 'essay/behaviour_set'
require 'essay/model_behaviours'
require 'essay/attribute_behaviours'
require 'essay/association_behaviours'

require 'essay/component_collection'
require 'essay/collections'
require 'essay/marking'

if defined?(ActiveRecord)
  ActiveRecord::Base.include(Essay::Marking)
end