Rails.application.routes.draw do


  resources :appointments
  # resources :patients
  # resources :doctors
  namespace :doctors do
  	devise_for :users
  end
  namespace :patients do
  	devise_for :users
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'welcome#index'
end
