module Pewter
  class Client
    POKEMON_DESCRIPTION_KEYS = [
      "abilities",
      "base_experience",
      "height",
      "id",
      "name",
      "sprites",
      "stats",
      "types",
      "weight",
    ].freeze

    def self.get_pokemon(q = "")
      new.get_pokemon(q)
    end

    def self.get_pokemons(limit = 5000)
      new.get_pokemons(limit)
    end

    def initialize; end

    def get_pokemon(q = "")
      resp = HTTParty.get("#{api_url}/#{q}")
      result = if resp.response.code == "200"
        parse_results(JSON.parse(resp.body))
      else
        {}
      end
    end

    def get_pokemons(limit = 5000)
      resp = HTTParty.get("#{api_url}?limit=#{limit}")
      result = if resp.response.code == "200"
        JSON.parse(resp.body)["results"].map do |pokemon|
          Pewter::Parsers::BasicInformation.parse(pokemon)
        end
      else
        []
      end
    end

    private

    def api_url
      "#{Pewter.configuration.url}/#{Pewter.configuration.api_version}/pokemon"
    end

    def parse_results(result)
      parsed_results = {}
      POKEMON_DESCRIPTION_KEYS.each do |key|
        case key
        when "abilities"
          parsed_results[key] = Pewter::Parsers::Abilities.parse(result[key])
        when "stats"
          parsed_results[key] = Pewter::Parsers::Stats.parse(result[key])
        when "sprites"
          parsed_results[key] = Pewter::Parsers::Sprites.parse(result[key])
        when "types"
          parsed_results[key] = Pewter::Parsers::Types.parse(result[key])
        else
          parsed_results[key] = result[key]
        end
      end
      parsed_results
    end
  end
end
