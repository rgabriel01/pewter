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
    ].freeze

    def self.get_pokemon(q = "")
      new.get_pokemon(q)
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
        else
          parsed_results[key] = result[key]
        end
      end
      parsed_results
    end
  end
end
