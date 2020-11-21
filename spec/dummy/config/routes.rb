Rails.application.routes.draw do
  mount OpenGraphImage::Engine => "/open_graph_image"
end
