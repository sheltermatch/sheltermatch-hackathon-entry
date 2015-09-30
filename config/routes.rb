Rails.application.routes.draw do
  devise_for :users, controllers: {
    registrations: 'users/registrations',
    confirmations: 'users/confirmations',
    passwords: 'users/passwords',
    sessions: 'users/sessions'
  }

  resources :shelters, only: [:index, :new, :create, :edit, :update]

  root "home#index"
  get "about/index"
end
