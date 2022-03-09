Rails.application.routes.draw do

  resources :games do
    resources :moves, only: [:create]
  end
  root to: 'games#index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
