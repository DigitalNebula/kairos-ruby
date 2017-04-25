require "kairos_ruby/version"
require 'kairos_ruby/data/rest_resource'
require 'kairos_ruby/gallery'
require 'kairos_ruby/subject'
require 'kairos_ruby/configuration'
require 'kairos_ruby/client'

module KairosRuby

  # store configuration as class variable
  class << self
    attr_writer :configuration
  end

  # access configuration or create new one
  def self.configuration
    @configuration ||= Configuration.new
  end

  # block to set configuration
  def self.configure
    yield(configuration)
  end
end
