Rails.application.routes.draw do

  resources :posts do
    resources :comments, :only => [:create]
  end



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
  
  resources :posts
  resources :contacts
  resources :pages
  resources :hospitals
  resources :conversations do
 
  resources :messages
  end


end
