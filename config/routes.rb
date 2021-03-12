Rails.application.routes.draw do
  root to: "articles#index"
  resources :articles
  resources :portfolio, only: :index
end
