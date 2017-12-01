Rails.application.routes.draw do
  root to: 'meals#home'
  resources :meals
  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
  mount Attachinary::Engine => "/attachinary"
end
