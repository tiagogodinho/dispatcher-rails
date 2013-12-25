# dispatcher-rails [![Build Status](https://travis-ci.org/tiagogodinho/dispatcher-rails.png?branch=master)](https://travis-ci.org/tiagogodinho/dispatcher-rails) [![Dependency Status](https://gemnasium.com/tiagogodinho/dispatcher-rails.png)](https://gemnasium.com/tiagogodinho/dispatcher-rails)
 [![Gem Version](https://badge.fury.io/rb/dispatcher-rails.png)](http://badge.fury.io/rb/dispatcher-rails)

An easy way to use [fnando/dispatcher-js](https://github.com/fnando/dispatcher-js) with assets-pipeline.

## Installation

Add this line to your application's Gemfile:

    gem 'dispatcher-rails'

And then execute:

    $ bundle

## Usage

The dispatcher file will be added to the asset pipeline and available for you to use. Add these lines after `//= require jquery` in `app/assets/javascripts/application.js`:

```
//= require dispatcher
```

Use the helpers:

``` erb
<%= dispatcher_tag %>
```

to generate a metatag:

``` html
<meta content="projects#index" name="page">
```

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request

## License

MIT License. Copyright 2012 Tiago Rafael Godinho
