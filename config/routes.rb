Rails.application.routes.draw do
  get 'movies/index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root to: "lists#index"
  resources :lists, only: [:index, :show,:new,:create] do
    resources :bookmarks, only: [:new, :create]
    resources :movies, only: [:index]
  end
  resources :bookmarks, only: [:destroy]
end
