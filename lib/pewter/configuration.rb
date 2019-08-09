module Pewter
  class Configuration
    attr_accessor :url, :api_version

    def initialize
      @url = nil
      @api_version = nil
    end
  end
end
