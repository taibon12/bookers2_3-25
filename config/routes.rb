Rails.application.routes.draw do
  devise_for :users
  root to: "homes#top"
  get "home/about" => "homes#about"
  resources :users, only: [:new, :create, :index, :show, :edit, :update]
  resources :books, except: [:new]

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
