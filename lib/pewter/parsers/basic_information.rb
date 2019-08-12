module Pewter
  module Parsers
    class BasicInformation < Base
      def parse
        poke_name = @hash["name"]
        poke_id = (@hash["url"].match(/(?<=\/)\d+/) || [])[0]
        {
          "id" => poke_id,
          "name" => poke_name,
        }
      end
    end
  end
end
