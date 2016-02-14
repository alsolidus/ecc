Rails.application.routes.draw do

  devise_for :users

  authenticated :user do
    root 'users#index'
    
  end

  unauthenticated :user do
    devise_scope :user do
      get "/" => "devise/sessions#new"
    end
  end
  
  get '/about' => 'pages#about'
  resources :pages
  resources :conversations do
 
    resources :messages
  end


end
