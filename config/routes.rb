Rails.application.routes.draw do
  resources :proxies, only: %i[new create]
  resources :profile_search, only: %i[new create]
  get 'sync_kvk', to: 'home#sync'
  root to: 'home#index'
end
