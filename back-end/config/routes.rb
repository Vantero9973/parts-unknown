Rails.application.routes.draw do
  namespace :api do 
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

    get '/hello', to: 'application#hello_world'
    post "/login", to: "sessions#create"
    delete "/logout", to: "sessions#destroy"
    post "/signup", to: "users#create"
    get "/me", to: "users#show"
    get "/landingimages", to: "blogs#landing_images"
    get "/postpage/:id", to: "posts#show_post"
    get "/randomdestinations", to: "destinations#index_three"
  end

  get "/destinations", :to => redirect('/')
  get "/success", :to => redirect('/')
  get "/stories", :to => redirect('/')
  get "/forum", :to => redirect('/')
  get "/store", :to => redirect('/')
  root 'home#index'
end
