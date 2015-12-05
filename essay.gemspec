# encoding: utf-8
require File.expand_path('../lib/essay/version', __FILE__)

Gem::Specification.new do |s|
  s.name            = 'essay'
  s.version         = Essay::VERSION
  s.authors         = ['Yaroslav Konoplov']
  s.email           = ['yaroslav@inbox.com']
  s.summary         = 'ActiveRecord descriptive library'
  s.description     = 'ActiveRecord descriptive library'
  s.homepage        = 'http://github.com/yivo/essay'
  s.license         = 'MIT'

  s.executables     = `git ls-files -z -- bin/*`.split("\x0").map{ |f| File.basename(f) }
  s.files           = `git ls-files -z`.split("\x0")
  s.test_files      = `git ls-files -z -- {test,spec,features}/*`.split("\x0")
  s.require_paths   = ['lib']

  s.add_dependency 'confo-config', '>= 1.0.0'
  s.add_dependency 'activesupport', '>= 3.2.0'
end