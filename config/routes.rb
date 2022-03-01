Rails.application.routes.draw do
  devise_for :admins
    root to: 'searches#index'
    
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
