require "open_graph_image/engine"

require "open_graph_image/config"
require "open_graph_image/image"
require "open_graph_image/generator"

module OpenGraphImage
  class Error < StandardError; end

  def self.config
    @config ||= Config.new
  end
end
