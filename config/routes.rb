Rails.application.routes.draw do
  root 'static_pages#root'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  namespace :api, defaults: { format: :json } do
    resources :session, only: [:create, :destroy]
    resources :users, only: [:create, :show, :destroy]
    resources :programs, only: [:index, :show]
    resources :workouts, only: [:create, :show, :index, :update]
  end
end
