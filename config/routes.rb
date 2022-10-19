Rails.application.routes.draw do
  resources :academia
  resources :usuarios
 get "welcome/index"
 root to: "welcome#index"
end
