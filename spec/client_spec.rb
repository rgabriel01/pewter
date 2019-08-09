RSpec.describe Pewter::Client do
  describe ".get_pokemon" do
    context "when successful" do
      it "returns a json representation of the pokemon data" do
        VCR.use_cassette("get_pokemon") do
          results = described_class.get_pokemon("pikachu")
          expect(results.empty?).to be_falsey
        end
      end
    end

    context "when it failed" do
    end
  end
end
