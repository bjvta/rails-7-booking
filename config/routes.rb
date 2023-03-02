# frozen_string_literal: true

Rails.application.routes.draw do
  get 'welcome/index'

  resources :articles do
    resources :comments
  end
  root 'welcome#index'

  namespace :api do
    namespace :v1 do
      get 'health', to: 'health#index'
      resources :bookings, only: [:create, :index, :show, :update, :destroy]
    end
  end
end
