module Pewter
  module Parsers
    class Stats < Base
      def parse
        parsed_results = {}
        @hash.each do |stat|
          name = stat["stat"]["name"]
          value = stat["base_stat"]
          parsed_results[name] = value
        end
        parsed_results
      end
    end
  end
end
