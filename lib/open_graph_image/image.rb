module OpenGraphImage
  class Image

    attr_reader :obj

    def initialize(obj)
      @obj = obj
    end

    def path
      "public/#{OpenGraphImage.config.base_store_dir}/#{obj.class.name.camelize.gsub('::','-')}/#{obj.id}.jpg"
    end

    def url
      path.gsub(/\Apublic/, '')
    end

    def exists?
      File.exists?(path)
    end

    def generate
      OpenGraphImage::Generator.new(obj).generate(path)
    end
  end
end
