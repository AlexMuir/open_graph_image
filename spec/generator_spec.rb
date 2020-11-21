require 'rails_helper'

RSpec.describe OpenGraphImage::Generator do
  it "generates an image" do
    object = TestPORO.new
    object.id = 123
    object.title = 'Some title'
    object.subtitle = 'Some subtitle'
    generator = OpenGraphImage::Generator.new(object)
    generator.generate
  end
end
