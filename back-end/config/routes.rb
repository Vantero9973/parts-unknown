Rails.application.routes.draw do
  resources :shop_items
  resources :destinations
  resources :forum_comments
  resources :posts
  resources :forums
  resources :countries
  resources :continents
  resources :blog_comments
  resources :blogs
  resources :users

  post "/login", to: "sessions#create"
  delete "/logout", to: "sessions#destroy"
  post "/signup", to: "users#create"
  get "/me", to: "users#show"
  get "/landingimages", to: "blogs#landing_images"
  get "/postpage/:id", to: "posts#show_post"
  # get "/countrymap", to: "countries#show_map"
end
