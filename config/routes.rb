Rails.application.routes.draw do
  root to: 'landings#index'

  resources :blogs
  resources :missings
  resources :orphans
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :profiles
end
