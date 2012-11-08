# dispatcher-rails

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

``` erb
<%= body_tag do %>
  <!-- your code here -->
<% end %>
```

to generate the body tag:

``` html
<body class="projects#index">
  <!-- your code here -->
</body>
```

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request

## License

MIT License. Copyright 2012 Tiago Rafael Godinho
