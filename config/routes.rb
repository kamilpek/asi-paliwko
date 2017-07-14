Rails.application.routes.draw do
  resources :vechicle_fuels
  resources :vechicle_costs
  resources :vechicle_notes
  resources :vechicles
  resources :roles
  devise_for :users

  get 'pages/home'

  root 'pages#home'
  
end
