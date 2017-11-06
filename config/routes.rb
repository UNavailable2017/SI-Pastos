Rails.application.routes.draw do

  # rest
  resources :censos
  resources :people
  resources :certificates
  resources :announcements

  # routes for events
  delete '/events/remove_olds', to: 'events#remove_olds'
  resources :events

  resources :elections
  resources :request_censos
  resources :contacts, only: %i[new index create]
  resources :newsletters do
    member do
      post :deliver
    end
  end

  # single routes

  get 'residences/index'
  get 'newsletters/deliver'

  # routes with namespace

  namespace :statistics do
    get 'total'
    get 'average'
    get 'health'
    get 'gender'
    get 'health'
    get 'censo_date'
    get 'children'
  end


  # routes devise

  devise_for :users
  namespace :users do
    get 'omniauth_callbacks/facebook'
    get 'omniauth_callbacks/google_oauth2'
    get 'omniauth_callbacks/twitter'
  end
  devise_scope :user do
    get '/users/auth/facebook/callback' => 'users/omniauth_callbacks#facebook'
    get '/users/auth/google_oauth2/callback' => 'users/omniauth_callbacks#google_oauth2'
    get '/users/auth/twitter/callback' => 'users/omniauth_callbacks#twitter'
  end


  # root
  root to: 'home#index'

  # routes future

  # resources :children
  # resources :health_services
  # resources :opinions
end
