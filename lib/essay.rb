require 'active_support/all'
require 'confo-config'

require 'essay/behaviour'
require 'essay/behaviours'
require 'essay/collections'
require 'essay/marking'

if defined?(ActiveRecord)
  ActiveRecord::Base.include(Essay::Marking)
end