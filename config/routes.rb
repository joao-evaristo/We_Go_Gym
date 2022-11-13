Rails.application.routes.draw do
  resources :user_enrollments
  resources :academia
  resources :usuarios
 get "welcome/index"
 get "welcome/login"
 root to: "welcome#index"
end
