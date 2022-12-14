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
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
