Rails.application.routes.draw do
  get 'gobernador/inicio', to: 'governor#home'

  get 'gobernador/registrar_censo', to: 'governor/register_censo'

  get 'gobernador/buscar_censo', to: 'governor/find_censo'

  get 'gobernador/certificado', to: 'governor/certificate'

  get 'gobernador/publicar_evento', to: 'governor/publish_event'

  get 'gobernador/correo', to: 'governor/email'

  get 'gobernador/mapa', to: 'governor/map'

  get 'gobernador/convocatorias', to: 'governor/announcement'

  get 'gobernador/elecciones', to: 'governor/election'

  get 'gobernador/estadisticas', to: 'governor/statistic'

  resources :announcements
  resources :events
  resources :elections
  resources :candidates
  resources :opinions
  resources :children
  resources :health_services
  resources :censos
  resources :residences
  resources :people
  resources :contacts, only: [:new, :index, :create]

  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'home#index'
end
