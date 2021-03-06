# AmazonEcho

[![Build Status](https://circleci.com/gh/gomayonqui/amazon_echo.png?style=shield)](https://circleci.com/gh/gomayonqui/amazon_echo)

Simple client that supports requests and responses for amazon echo


## Installation

Add this line to your application's Gemfile:

```ruby
gem 'amazon_echo'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install amazon_echo

## Usage
To start using the gem, create a new object
```ruby
  echo = AmazonEcho.new
  echo.say("Yes master")
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release` to create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Tests

For running all tests
```ruby
  rspec spec
```

## Contributing

1. Fork it ( https://github.com/gomayonqui/amazon_echo/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
