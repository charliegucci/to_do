Rails.application.routes.draw do
  devise_for :users
  resources :lists
  root 'lists#index'
  get 'home/delete_list'
  get 'home/delete_all'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
