require 'faraday'
require 'faraday_middleware'

module KairosRuby
  class Client

    def self.api_call method, path, attributes
      @connection = Faraday.new(:url => KairosRuby.configuration.api_server) do |faraday|
        faraday.request  :json             # form-encode POST params
        faraday.response :logger                  # log requests to STDOUT
        faraday.adapter  Faraday.default_adapter  # make requests with Net::HTTP

      end

      @connection.send(method, path) do |req|
        req.headers['app_id'] = KairosRuby.configuration.api_id
        req.headers['app_key'] = KairosRuby.configuration.api_key
        req.headers['User-Agent'] = "KairosRubyClient v #{KairosRuby::VERSION}"
        req.body = attributes
      end
    end
  end
end