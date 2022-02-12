Rails.application.routes.draw do
  get 'sync_kvk', to: 'home#sync'
  root to: 'home#index'
end
