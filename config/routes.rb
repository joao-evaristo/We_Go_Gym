Rails.application.routes.draw do
  resources :user_enrollments
  resources :academia
  resources :usuarios
  get "academia/:id", to: "user_enrollments#new"
  post "academia/:id", to: "user_enrollments#create"
  get "welcome/index"
  get "welcome/login"
  get "cadastro", to: "usuarios#new"
  post "cadastro", to: "usuarios#create"
  get "entrar", to: "usuarios#login"
  post "entrar", to: "usuarios#login_func"
  delete "logout", to: "usuarios#logout"
  root to: "welcome#index"
end
