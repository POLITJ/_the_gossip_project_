Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'gossips#index'

  resources :gossips
  resources :users
  resources :cities
  resources :comments
  resources :sessions

  resources :gossips do
    resources :comments
  end

# WE USE THE OLD METHOD TO SHOW STATIC PAGES (no need to have index, show, create...)
  get "/team", to: "static_pages#team"
  get "/contact", to: "static_pages#contact"

  # THIS IS THE OLD METHOD, WE'RE NOW USING THE ABOVE METHOD ie: resources
    # get "/", to: "welcome#home"
    # get "/welcome/:id", to: "welcome#greet"
    # get "/gossip/:id", to: "gossip#show"
end
