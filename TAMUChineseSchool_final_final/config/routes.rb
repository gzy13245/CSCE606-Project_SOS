Rails.application.routes.draw do
  #mount Upmin::Engine => '/admin'
  root to: 'visitors#index'
  devise_for :users
  resources :users

<<<<<<< HEAD
  devise_for :courses
=======
  resources :families

>>>>>>> 8e642fa15bfa7ca927abcdfadb66245e4eeee201
  resources :courses
end
