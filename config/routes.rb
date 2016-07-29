Rails.application.routes.draw do
  root 'projects#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :projects do
  	resources :jobs
  end

  get '/sign_up', to: 'users#new', as: 'signup'
  get '/login', to: 'sessions#new', as: 'login'
  get '/logout', to: 'session#destroy', as: 'logout'

  resources :users, only: [:new, :create]

  resources :sessions, only: [:new, :destroy]
end
