require 'sidekiq/web'

Rails.application.routes.draw do
  get 'jobs/index'
  mount Sidekiq::Web => '/sidekiq'
end
