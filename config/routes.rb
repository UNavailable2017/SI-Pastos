Rails.application.routes.draw do
  resources :health_services
  resources :residences
  resources :elections
  resources :work_group_people
  resources :candidates
  resources :people
  resources :announcements
  resources :opinions
  resources :censos
  resources :governors
  resources :events
  resources :work_groups
  resources :contacts, only: [:new, :index, :create]

  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'home#index'
end
