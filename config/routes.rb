Rails.application.routes.draw do
  ActiveAdmin.routes(self)
  devise_for :users
  resources :infos
  root to: 'pages#home'
  get 'pages/agence'
  get 'pages/works'
  get 'pages/contact'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
