Rails.application.routes.draw do
  get 'aux_user/homeUser'

  get 'aux_user/homeGovernor'

  resources :contacts, only: [:new, :index, :create]

  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'home#index'
end
