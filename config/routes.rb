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
  resources :opinions
  # resources :children
  # resources :health_services
  resources :censos
  # resources :people

  resources :announcements
  resources :events
  resources :residences
  resources :elections
  resources :contacts, only: [:new, :index, :create]
  devise_for :users, path: 'auth', path_names: { sign_in: 'login', sign_out: 'logout', password: 'secret', confirmation: 'verification', unlock: 'unblock', registration: 'register', sign_up: 'cmon_let_me_in' }
  root to: 'home#index'
end
