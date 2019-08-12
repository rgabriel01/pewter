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
  end

  describe ".get_pokemons" do
    context "when successful" do
      context "when no limit is passed" do
        it "returns an array of pokemon names" do
          VCR.use_cassette("get_pokemons") do
            results = described_class.get_pokemons
            expect(results.empty?).to be_falsey
          end
        end
      end

      context "when a limit is passed" do
        it "returns an array of pokemon names limitted by the limit" do
          VCR.use_cassette("get_pokemons_with_limit") do
            results = described_class.get_pokemons(100)
            expect(results.count).to eq 100
          end
        end
      end
    end
  end
end
