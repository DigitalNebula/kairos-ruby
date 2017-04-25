module KairosRuby
  class Gallery < RestResource
    def initialize(name)
      @name = name
    end

    def self.get(name)
      make_call(:get, '/gallery')
    end

    def self.list
      make_call(:post, '/gallery/view_all')
    end

    def self.remove(name)
      make_call(:post, '/gallery/remove', {gallery_name: name})
    end
  end
end