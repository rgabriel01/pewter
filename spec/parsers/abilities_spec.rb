RSpec.describe Pewter::Parsers::Abilities do
  describe ".parse" do
    let(:abilities_hash) {[
      {
        "ability"=> {"name"=>"lightning-rod", "url"=>"https://pokeapi.co/api/v2/ability/31/"}, "is_hidden"=>true, "slot"=>3
      },{
        "ability"=>{"name"=>"static", "url"=>"https://pokeapi.co/api/v2/ability/9/"}, "is_hidden"=>false, "slot"=>1
      }
    ]}

    it "returns an array of sprite urls" do
      results = described_class.parse(abilities_hash)
      expect(results.is_a?(Array)).to be_truthy
      expect(results.count).to eq 2
      expect(results).to include("lightning-rod")
      expect(results).to include("static")
    end
  end
end
