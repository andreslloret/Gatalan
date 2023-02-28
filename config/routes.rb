Rails.application.routes.draw do
  root to: "pages#home"
  get '/signup', to: 'users#new'
  post '/signup', to: 'users#create'
  resources :registers, only: [:index, :create]
end
