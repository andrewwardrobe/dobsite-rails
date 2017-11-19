# frozen_string_literal: true

Rails.application.routes.draw do
  get 'home/index'

  devise_for :users
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  resources :kru_members, path: 'mango_kru'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'home#index'
end
