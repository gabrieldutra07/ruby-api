Rails.application.routes.draw do
  resources :books
  resources :authors do
      get "/books", to: "books#index"
      get "/teste", to: "books#teste"
  end
  resources :bookcases
  get "up" => "rails/health#show", as: :rails_health_check
end
