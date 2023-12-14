Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  resources :markets, only: [:index, :show]
  resources :vendors, only: :show

  get '/search', to: 'search#index', as: 'search'

  # Defines the root path route ("/")
  # root "articles#index"
end
