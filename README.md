# Essay

## Tiny library that allows to describe behaviours of ActiveRecord models, attributes and associations
```ruby
  # TODO Examples

  class Article < ActiveRecord::Base
    describe(:id) { is(:integer).is(:primary_key) }
    describe(:content) { is(:wysiwyg) }
  end
```

## Gemfile
```ruby
gem 'essay', github: 'yivo/essay'
```