require 'rails_helper'

RSpec.describe OpenGraphImage do
  it "has a version number" do
    expect(OpenGraphImage::VERSION).not_to be nil
  end

  it "creates an image from an object" do
    object = TestPORO.new
    object.id = 123
    object.title = 'Some title'
    object.subtitle = 'Some subtitle'

    image = OpenGraphImage::Image.new(object)
    expect(image).not_to exist
    expect(image.path).to eq "public/open_graph_images/TestPORO/123.jpg"
    expect(image.url).to eq '/open_graph_images/TestPORO/123.jpg'
  end
end
