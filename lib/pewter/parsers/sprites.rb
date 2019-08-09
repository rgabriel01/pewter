module Pewter
  module Parsers
    class Sprites
      def self.parse(sprites_hash)
        new(sprites_hash).parse
      end

      def initialize(sprites_hash)
        @sprites_hash = sprites_hash
      end

      def parse
        parsed_results = []
        @sprites_hash.keys.each do |key|
          parsed_results << @sprites_hash[key]
        end
        parsed_results
      end
    end
  end
end
