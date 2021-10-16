Rails.application.routes.draw do
  root to: redirect("/posts")
  resources :posts, only: :index
  resources :logs, only: :index
end
