require 'imgkit'

module OpenGraphImage
  class Generator
    attr_reader :obj

    def initialize(obj)
      @obj = obj
    end

    def generate(path)
      begin
        html = ApplicationController.render template: view_file, 
          layout: false, 
          locals: {
            obj: obj,
          }
      rescue ActionView::MissingTemplate => e
        raise Error.new "Expected to find a template for this image at app/views/#{view_file} but did not find it. #{e.message}"
      end
      @kit = IMGKit.new(html)
      #
      # Ensure we have the required directory structure
      FileUtils.mkdir_p File.dirname(path)

      # For some reason we have to create the file before IMGkit can write to it.
      FileUtils.touch(path)
      @kit.to_file path
    end

    private
    def view_file
      "open_graph_images/#{obj.class.name.underscore}"
    end
  end
end
