RSpec.describe Pewter::Parsers::Types do
  describe ".parse" do
    let(:types_hash) {[
      {"slot"=>1, "type"=>{"name"=>"electric", "url"=>"https://pokeapi.co/api/v2/type/13/"}},
      {"slot"=>2, "type"=>{"name"=>"poison", "url"=>"https://pokeapi.co/api/v2/type/13/"}}
    ]}

    it "returns an array of sprite urls" do
      results = described_class.parse(types_hash)
      expect(results.is_a?(Array)).to be_truthy
      expect(results.count).to eq 2
      expect(results).to include("electric")
      expect(results).to include("poison")
    end
  end
end
