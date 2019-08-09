RSpec.describe Pewter::Parsers::Stats do
  describe ".parse" do
    let(:stats_hash) {[
      {"base_stat"=>90, "effort"=>2, "stat"=>{"name"=>"speed", "url"=>"https://pokeapi.co/api/v2/stat/6/"}},
      {"base_stat"=>50, "effort"=>0, "stat"=>{"name"=>"special-defense", "url"=>"https://pokeapi.co/api/v2/stat/5/"}},
      {"base_stat"=>50, "effort"=>0, "stat"=>{"name"=>"special-attack", "url"=>"https://pokeapi.co/api/v2/stat/4/"}},
      {"base_stat"=>40, "effort"=>0, "stat"=>{"name"=>"defense", "url"=>"https://pokeapi.co/api/v2/stat/3/"}},
      {"base_stat"=>55, "effort"=>0, "stat"=>{"name"=>"attack", "url"=>"https://pokeapi.co/api/v2/stat/2/"}},
      {"base_stat"=>35, "effort"=>0, "stat"=>{"name"=>"hp", "url"=>"https://pokeapi.co/api/v2/stat/1/"}}
    ]}

    let(:sprites_hash) {{"front" => "pikachu-front.jpg"}}
    it "returns an object of stats" do
      results = described_class.parse(stats_hash)
      expect(results.is_a?(Hash)).to be_truthy
      expect(results).to include({ "speed" => 90 })
      expect(results).to include({ "special-defense" => 50 })
      expect(results).to include({ "special-attack" => 50 })
      expect(results).to include({ "defense" => 40 })
      expect(results).to include({ "attack" => 55 })
      expect(results).to include({ "hp" => 35 })
    end
  end
end
