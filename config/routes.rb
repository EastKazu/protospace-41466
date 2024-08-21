Rails.application.routes.draw do
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
root "prototypes#index"
resources :prototypes do
  resources :comments, only: :create
end
resources :users, only: :show
  # root "articles#index"
end
