Rails.application.routes.draw do

  # get 'gobernador/inicio', to: 'governor#home'
  # get 'gobernador/registrar_censo', to: 'governor#register_censo'
  # get 'gobernador/buscar_censo', to: 'governor#find_censo'
  # get 'gobernador/certificado', to: 'governor#certificate'
  # get 'gobernador/publicar_evento', to: 'governor#publish_event'
  # get 'gobernador/correo', to: 'governor#email'
  # get 'gobernador/mapa', to: 'residences#index'
  # get 'gobernador/convocatorias', to: 'governor#announcement'
  # get 'gobernador/elecciones', to: 'governor#election'
  # get 'gobernador/estadisticas', to: 'governor#statistic'
  # resources :candidates
  # resources :opinions
  # resources :children
  # resources :health_services
  resources :censos
  # resources :people
  resources :certificates, only: [:new,:index]
  resources :announcements
  resources :events
  resources :residences
  resources :elections
  resources :contacts, only: [:new, :index, :create]
  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }

  devise_scope :user do
    get 'sign_in', to: 'devise/sessions#new', as: :new_user_session_facebook
    get 'sign_out', to: 'devise/sessions#destroy', as: :destroy_user_session_facebook
  end

  root to: 'home#index'
end
