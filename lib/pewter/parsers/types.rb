module Pewter
  module Parsers
    class Types < Base
      def parse
        parsed_results = []
        @hash.each do |type|
          name = type["type"]["name"]
          parsed_results << name
        end
        parsed_results
      end
    end
  end
end
