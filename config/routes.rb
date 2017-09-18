Rails.application.routes.draw do
  resources :contacts, except: [:destroy, :show, :update ]

  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'home#index'
end
