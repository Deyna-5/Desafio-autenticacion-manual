Rails.application.routes.draw do

  get "users/sign_in", to: "sessions#new", as: "new_user_session"
  post "users", to: "sessions#create", as: "sign_in"
  
  get "users/sign_up", to: "registrations#new", as: "new_user_registration"
  post "users/registration", to: "registrations#create"

  delete "users/sign_out", to: "sessions#destroy", as: "destroy_user_sessions"

  resources :stories
  root 'stories#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
