module Pewter
  class Configuration
    attr_accessor :access_key, :secret_key, :personal_key
  end

  def initialize
    @access_key = nil
    @secret_key = nil
    @personal_key = nil
  end
end
