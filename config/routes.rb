Rails.application.routes.draw do
resources :articles do
  resources :comments
end

  get 'landing/index'
  root controller: :landing, action: :index
end
