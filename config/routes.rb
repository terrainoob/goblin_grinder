Rails.application.routes.draw do
  resources :user_sessions, only: [:create]
  resources :notes
  resources :play_sessions

  get 'login' => 'user_sessions#new', :as => :login
  get 'dashboard', to: 'dashboard#show'
  get 'home', to: 'home#show'

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
