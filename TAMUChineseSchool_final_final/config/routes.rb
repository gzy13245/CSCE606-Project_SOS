Rails.application.routes.draw do
  #mount Upmin::Engine => '/admin'
  root to: 'visitors#index'
  devise_for :users
  resources :users

  devise_for :courses
  resources :families
  resources :courses
  resources :events


  get 'about' => 'about#index'
  get 'organization' => 'organization#index'
  get 'school_rules' => 'school_rules#index'
  get 'teachers_guidelines' => 'teachers_guidelines#index'
  get 'students_handbook' => 'students_handbook#index'
  get 'contact' => 'contact#index'
  resources :contact
  resources :taking_courses
end
