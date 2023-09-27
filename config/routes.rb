Rails.application.routes.draw do
  get "sign_up", to: "registrations#new"
  post "users", to: "registrations#create"
  get "sign_in", to: "sessions#new"
  get "testweet", to: "tweets#testweet"
  post "sign_in", to: "sessions#create"
  delete "logout", to: "sessions#destroy"
  get "/auth/twitter/callback", to: "omniauth_callbacks#twitter"
  resources :twitter_accounts
  resources :tweets

  root to: "main#index"
end
