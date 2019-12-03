Rails.application.routes.draw do

  resources :exercicios
  get 'favorites/update'
	get 'favorites/index'

  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
    resources :exercises

    

  root to: 'pages#home'
  devise_for :users


  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
