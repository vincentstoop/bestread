Rails.application.routes.draw do
  root 'books#index'

  resources :books
  resources :authors

  get "books" => "books#index"
end
