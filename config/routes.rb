Rails.application.routes.draw do
  devise_for :users, :controllers => { registrations: 'registrations' }

  resources :tickets
  resource :search, only: [:show, :create]

  namespace :admin do
    resources :railway_stations do
      patch :update_position, on: :member
      patch :update_times, on: :member
    end

    resources :trains do
      resources :carriages, shallow: true
    end

    resources :routes
    resources :carriages
    resources :tickets
  end

  get 'welcome/index'

  root 'welcome#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
