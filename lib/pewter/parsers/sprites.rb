module Pewter
  module Parsers
    class Sprites < Base
      def parse
        parsed_results = []
        @hash.keys.each do |key|
          parsed_results << @hash[key]
        end
        parsed_results
      end
    end
  end
end
