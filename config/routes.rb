Rails.application.routes.draw do

  resources :votes
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
  # resources :opinions
  resources :censos
  resources :people
  resources :certificates
  resources :announcements
  resources :events
  resources :residences, only: [:index]
  resources :candidates  do
      member do
          put "like" => "elections#upvote"
          put "unlike" => "elections#downvote"
      end
  end
  resources :elections
  resources :request_censos
  resources :contacts, only: [:new, :index, :create]

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

  root to: 'home#index'
end
