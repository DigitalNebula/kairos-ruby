module KairosRuby
  class RestResource
    def self.make_call method, path, attributes = nil
      KairosRuby::Client.api_call(method, path, attributes)
    end
  end
end