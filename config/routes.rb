Rails.application.routes.draw do
  resources :academia
  resources :usuarios
 get "welcome/index"
 get "welcome/login"
 root to: "welcome#index"
end
