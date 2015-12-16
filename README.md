# Essay

##### This library provides a series of classes to obtain plugin information of ActiveRecord models.
This library is focused only on ***custom*** ActiveRecord features and will not provide information for default ActiveRecord features.

### The problem
There are a lot of plugins for ActiveRecord. For example:

 - Plugins for translation (Globalize)
 - Plugins for file attachments (CarrierWave, PaperClip)
 - Plugins for safe deleting (Paranoid)
 - Plugins for taggings
 - Plugins for geocoding
 - Plugins for social networks (likes, shares etc)
 - and others...

Each of this plugins adds and/or removes and/or modifies behaviours of model. For example: adds callbacks, validations, methods, adds some imaginary meaning for attributes (good example: `deleted_at` when using paranoid). Each plugin uses different way of storing its options.

So, what if we need to know what plugins model is using and plugin options? ActiveRecord does not provide standardized way of developing and storing plugin options. **This library provides a series of classes and utilities for creating essay writers (classes which provide information about specific ActiveRecord plugin) with unified API design.**  

### Example for Globalize
```ruby
# TODO
```

## Gemfile
```ruby
gem 'essay', github: 'yivo/essay'
```
