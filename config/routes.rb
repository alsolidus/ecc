Rails.application.routes.draw do

  devise_for :users
  resources :users do
    resource :profile
  end

  authenticated :user do
    root 'users#index'
    
  end

  unauthenticated :user do
    devise_scope :user do
      get "/" => "devise/sessions#new"
    end
  end
  
  get '/about' => 'pages#about'
  resources :contacts
  resources :pages
  resources :conversations do
 
    resources :messages
  end


end
