require "pry"
RSpec.describe Pewter::Parsers::Sprites do
  describe ".parse" do
    let(:sprites_hash) {{"front" => "pikachu-front.jpg"}}
    it "returns an array of sprite urls" do
      results = described_class.parse(sprites_hash)
      expect(results.is_a?(Array)).to be_truthy
      expect(results.count).to eq 1
      expect(results).to include(sprites_hash["front"])
    end
  end
end
