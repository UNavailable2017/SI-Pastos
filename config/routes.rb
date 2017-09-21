Rails.application.routes.draw do
  resources :announcements
  resources :events
  resources :elections
  resources :candidates
  resources :opinions
  resources :children
  resources :health_services
  resources :censos
  resources :residences
  resources :people
  resources :contacts, only: [:new, :index, :create]

  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'home#index'
end
