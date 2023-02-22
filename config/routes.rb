Rails.application.routes.draw do
  resources :restaurants, only: [:index, :show, :new, :create] do
    # get 'reviews/new'
    # get 'restaurants/index', to: "restaurants#index"
    # get 'restaurants/new', to: "restaurants#new"
    # post'restaurants', to: 'restaurant#create'
    # get 'restaurants/:id', to: "restaurants#show"
    resources :reviews, only: [:new, :create]
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
