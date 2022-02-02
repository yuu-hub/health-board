Rails.application.routes.draw do
  get 'users/show'
  get 'users/new'
  get 'users/create'
    root to: 'searches#index'

    get 'signup', to: 'users#new'
    resources :users, only: [:index, :show, :create]
    resources :searches
end
