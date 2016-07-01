Rails.application.routes.draw do
  root 'projects#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :projects do
  	resources :jobs
  end
end
