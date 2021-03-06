Rails.application.routes.draw do
  root to: 'searches#index'
  devise_for :admins, controllers: {
    sessions: 'admins/sessions',
    passwords: 'admins/passwords',
    registrations: 'admins/registrations'
  }
    
    get 'login', to: 'sessions#new'
    post 'login', to: 'sessions#create'
    delete 'logout', to: 'sessions#destroy'
    
    get 'signup', to: 'users#new'
    resources :users, only: [:index, :show, :new, :create] do
        member do
          get :likes
        end
    end
    
    resources :favorites, only: [:create, :destroy]
    resources :searches
end
