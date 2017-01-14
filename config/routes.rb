Rails.application.routes.draw do
  # root 'books#index' # URI is / or /books

  resources :books
  resources :authors
  get "mybestread" => "mybestread#profile", as: :mybestread

end
