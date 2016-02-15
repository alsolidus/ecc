Rails.application.routes.draw do

  devise_for :users
  resources :users do
    resource :profile
  end

  authenticated :user do
    root 'pages#index'
    
  end

  unauthenticated :user do
    devise_scope :user do
      get "/" => 'pages#index'
    end
  end
  
  get '/about' => 'pages#about'
  resources :contacts
  resources :pages
  resources :conversations do
 
    resources :messages
  end


end
