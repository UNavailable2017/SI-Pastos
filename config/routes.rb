Rails.application.routes.draw do

  localized do
    # rest
    resources :censos
    resources :people
    resources :certificates
    resources :votes
    resources :candidates
    resources :elections
    resources :request_censos
    resources :contacts, only: %i[new index create]

    # routes with only a member
    resources :announcements do
      delete 'remove_olds', on: :collection
    end

    resources :events do
      delete 'remove_olds', on: :collection
    end

    # routes for events
    resources :newsletters do
      get 'deliver', on: :member
    end

    # single routes

    get 'residences/index'
    get 'newsletters/deliver'

    # routes with namespace
    namespace :statistics do
      get 'total', 'average', 'health', 'gender', 'health', 'censo_date', 'children'
    end

    # routes devise
    devise_for :users

    # root
    root to: 'home#index'
  end

  namespace :users do
    namespace :omniauth_callbacks do
      get 'facebook', 'google_oauth2', 'twitter'
    end
  end

  devise_scope :user do
    namespace :users do
      scope 'auth' do
        get 'facebook/callback', to: 'omniauth_callbacks#facebook'
        get 'google_oauth2/callback', to: 'omniauth_callbacks#google_oauth2'
        get 'twitter/callback', to: 'omniauth_callbacks#twitter'
      end
    end
  end
end
