# OpenGraphImage

Easily generates images from resources for use as their OpenGraph image.

## Usage
The library expects a template named after the resource.  ie. BlogPost expects `blog_post`, 

### 1. Setup views
Create a view file at `app/views/open_graph_images/blog_post.html.erb`

```html
<style>
.card {
  position: relative;
  width: 1200;
  height: 630;
}
</style>
<div class="card">
  <h1><%= obj.title %></h1>
  <div class="subtitle">An awesome post</div>
</div>
```

Any external resources such as images must be referenced with absolute URLs.

### 2. Generate images
```ruby
OpenGraphImage::Image.new(post).generate
```

Will create and save the image. 


You may want to add a callback to create the OpenGraph image when an object is saved
```ruby
class Post < ApplicationRecord
  after_save :generate_opengraph_image

  def generate_opengraph_image
    return unless title_changed?
    OpenGraphImage::Image.new(self).generate
  end
end
```

### 3. Link to images
OpenGraphImage::Image.new(post).url


