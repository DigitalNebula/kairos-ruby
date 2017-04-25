module KairosRuby
  class Configuration
    attr_accessor :api_id, :api_key, :api_server

    def initialize
      @api_id = nil
      @api_key = nil
      @api_server = 'https://api.kairos.com'
    end
  end
end