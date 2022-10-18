Rails.application.routes.draw do
  resources :friends
 get "welcome/index"
 root to: "welcome#index"
end
