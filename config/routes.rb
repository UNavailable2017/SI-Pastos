Rails.application.routes.draw do

  localized do
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
    resources :contacts, only: %i[new create]
    resources :newsletters do
      member do
        post :deliver
      end
    end

    # single routes
    resources :residences
    #  get 'residences/index'
    get 'newsletters/deliver'

    # routes with namespace
    namespace :statistics do
      get 'total', 'average', 'health', 'gender', 'health', 'censo_date', 'children'
    end

    # routes devise
    devise_for :users

    # root
    root to: 'home#index'
    resources :children
    resources :opinions

  end

  namespace :users do
    namespace :omniauth_callbacks do
      get 'facebook', 'google_oauth2', 'twitter'
    end
  end

  devise_scope :user do
    namespace :users do
      get 'auth/facebook/callback', to: 'omniauth_callbacks#facebook'
      get 'auth/google_oauth2/callback', to: 'omniauth_callbacks#google_oauth2'
      get 'auth/twitter/callback', to: 'omniauth_callbacks#twitter'
    end
  end
end
