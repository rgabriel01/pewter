require "pry"

RSpec.describe Pewter::Client do
  describe "get_pokemon" do
    describe "when successful" do
      it "returns a json representation of the pokemon data" do
        results = described_class.get_pokemon("pikachu")
        expect(results.empty?).to be_falsey
      end
    end
    describe "when it failed" do
    end
  end
end
