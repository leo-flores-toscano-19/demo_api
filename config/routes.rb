Rails.application.routes.draw do
  
  # Home controller routes.
  #root   'home#index'
  get    'auth'            => 'home#auth'
  
  # Get login token from Knock
  post   'user_token'      => 'user_token#create'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
    
  # User actions
  get    '/users'          => 'users#index'
  get    '/users/current'  => 'users#current'
  post   '/users/create'   => 'users#create'
  patch  '/user/:id'       => 'users#update'
  delete '/user/:id'       => 'users#destroy'

  # Identifier actions
  get    '/identifiers/current'  => 'identifiers#current'
  get    '/identifiers/next'  => 'identifiers#next'

  # route for social app login
  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth' }
  root to: 'pages#home'
  
end
