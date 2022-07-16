Rails.application.routes.draw do
  devise_for :users
  root to: "homes#top"
  get "home/about" => "homes#about"
  resources :users, only: [:new, :create, :index, :show, :edit, :update]
  #espectは[]の中を除外するもの。使う機能が多い場合はこちらを使う方が
  resources :books, except: [:new]

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
