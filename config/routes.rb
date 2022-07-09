Rails.application.routes.draw do

  resources :books, only: [:new, :edit, :create, :index, :show, :destroy]
  root to: "homes#top"
  devise_for :users
  get "homes/about" => "homes#about", as: "about"
  resources :users, only: [:new,:create,:index,:show,:edit,:update]


  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
