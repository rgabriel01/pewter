module Pewter
  module Parsers
    class Abilities < Base
      def parse
        parsed_results = []
        @hash.each do |ability|
          name = ability["ability"]["name"]
          parsed_results << name
        end
        parsed_results
      end
    end
  end
end
