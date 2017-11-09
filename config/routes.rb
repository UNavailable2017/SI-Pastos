Rails.application.routes.draw do

  # rest
  resources :censos
  resources :people
  resources :certificates

  # routes for announcements
  delete '/announcements/remove_olds', to: 'announcements#remove_olds'
  resources :announcements

  # routes for events
  delete '/events/remove_olds', to: 'events#remove_olds'
  resources :events
  resources :votes
  resources :candidates

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

<<<<<<< HEAD
=======
  resources :newsletters do
    member do
      post :deliver
    end
  end

  get 'newsletters/deliver'
  get 'statistics/total'
  get 'statistics/average'
  get 'statistics/children'
  get 'statistics/health'
  get 'statistics/gender'
  get 'statistics/health'
  get 'statistics/censo_date'
>>>>>>> test_censo

  # root
  root to: 'home#index'

  # routes future

  # resources :children
  # resources :health_services
  # resources :opinions
end
