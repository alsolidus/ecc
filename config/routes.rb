Rails.application.routes.draw do

  devise_for :users
  resources :users do
    resource :profile
  end

  authenticated :user do
    root 'pages#index'
    
  end

  root :to => 'pages#index'

  get '/about' => 'pages#about'
  resources :contacts
  resources :pages
  resources :hospitals
  resources :conversations do
 
  resources :messages
  end


end
