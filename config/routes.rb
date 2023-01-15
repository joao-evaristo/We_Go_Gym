Rails.application.routes.draw do
  resources :user_gym_admins
  resources :user_enrollments
  resources :academia do
    resources :reviews
    resources :user_gym_admins
    resources :user_enrollments
  end
  post "academia/:id", to: "user_enrollments#create"
  put "academia/:id", to: "user_enrollments#unenroll"
  patch "academia/:id", to: "user_enrollments#enroll"
  resources :usuarios
  get "welcome/index"
  get "welcome/login"
  get "cadastro", to: "usuarios#new"
  get "search", to: "academia#search"
  post "cadastro", to: "usuarios#create"
  get "entrar", to: "usuarios#login"
  post "entrar", to: "usuarios#login_func"
  delete "logout", to: "usuarios#logout"
  root to: "welcome#index"
end
