Rails.application.routes.draw do
  #mount Upmin::Engine => '/admin'
  root to: 'visitors#index'
  devise_for :users
  resources :users

  devise_for :courses
  resources :families
  resources :courses

  resources :taking_courses
end
