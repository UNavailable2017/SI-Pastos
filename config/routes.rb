Rails.application.routes.draw do
  resources :announcements
  resources :events
  resources :health_services
  resources :residences
  resources :elections
  resources :candidates
  resources :meetings
  resources :people
  resources :opinions
  resources :censos
  resources :governors
  resources :work_groups
  resources :cabildos
  get 'form/contactanos'

  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'home#index'
end
