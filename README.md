# Pewter

A humble and down-to-earth ruby wrapper for [Poke-Api](https://pokeapi.co/)

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'pewter'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install pewter

## Usage

Make sure you first configure pewter
```ruby
Pewter.configure do |config|
  config.url = "https://pokeapi.co/api"
  config.api_version = "v2"
end
```

And ...
```ruby
Pewter::Client.get_pokemon("pikachu")
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Feel free to contribute :)

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
