Rails.application.routes.draw do
  resources :gyms
  resources :usuarios
  get "welcome/index"
  get "welcome/login"
  get "cadastro", to: "registrations#new"
  post "cadastro", to: "registrations#create"

  get "login", to: "sessions#new"
  post "login", to: "sessions#create"

  delete "logout", to: "sessions#destroy"
  root to: "welcome#index"
end
