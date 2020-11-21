module OpenGraphImage
  class Config
    attr_accessor :base_store_dir

    def initialize
      # Where are keeping the image files
      @base_store_dir = "open_graph_images"
    end
  end
end
