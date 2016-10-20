# frozen_string_literal: true
require File.expand_path('../lib/essay/version', __FILE__)

Gem::Specification.new do |s|
  s.name            = 'essay'
  s.version         = Essay::VERSION
  s.authors         = ['Yaroslav Konoplov']
  s.email           = ['eahome00@gmail.com']
  s.summary         = 'Feature information of activerecord models'
  s.description     = 'Feature information of activerecord models, attributes and associations'
  s.homepage        = 'http://github.com/yivo/essay'
  s.license         = 'MIT'

  s.executables     = `git ls-files -z -- bin/*`.split("\x0").map{ |f| File.basename(f) }
  s.files           = `git ls-files -z`.split("\x0")
  s.test_files      = `git ls-files -z -- {test,spec,features}/*`.split("\x0")
  s.require_paths   = ['lib']

  s.add_dependency 'activesupport', '>= 3.0', '< 6.0'
  s.add_dependency 'activerecord',  '>= 3.0', '< 6.0'
  s.add_dependency 'traits',        '~> 1.0'
end
