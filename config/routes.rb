Rails.application.routes.draw do
  resources :meals
  devise_for :users
  root to: 'meals#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
