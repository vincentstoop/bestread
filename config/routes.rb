Rails.application.routes.draw do
  # root 'books#index' # URI is / or /books
  root "pages#home"
  resources :books
  resources :authors
end
