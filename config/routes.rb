require 'sidekiq/web'
# Never allow this in production!
Rails.application.routes.draw do
  resources :reports, only: [:index, :create]
  mount Sidekiq::Web => '/sidekiq'
end
