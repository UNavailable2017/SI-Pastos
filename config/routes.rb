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
  # resources :children
  # resources :health_services
  # resources :people
  resources :opinions
  resources :censos
  resources :certificates, only: [:new, :show, :create]
  resources :announcements
  resources :events
  resources :residences, only: [:index]
  resources :elections
  resources :contacts, only: [:new, :index, :create]
  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
  get 'statistics/total'
  get 'statistics/average'
  get 'statistics/children'
  get 'statistics/health'

  root to: 'home#index'
end
