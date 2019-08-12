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

Or to get a list of pokemons
```ruby
Pewter::Client.get_pokemons

# with limit
Pewter::Client.get_pokemons(100)
```

## Contributing

Feel free to contribute :)

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
