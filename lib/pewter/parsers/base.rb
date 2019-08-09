module Pewter
  module Parsers
    class Base
      def self.parse(hash)
        new(hash).parse
      end

      def initialize(hash)
        @hash = hash
      end
    end
  end
end
