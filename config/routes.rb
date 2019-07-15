Rails.application.routes.draw do
  root to: 'stories#index'
  
  devise_for :users
  resources :stories
end
