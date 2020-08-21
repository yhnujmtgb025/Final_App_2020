Rails.application.routes.draw do
  devise_for :users
  require 'sidekiq/web'
  mount Sidekiq::Web => '/sidekiq'


  root 'photos#index'
  resources :albums, :photos, :users
  # photo
  get '/Feed/photo/new',to: 'photos#new'
  get '/Feed/photo/show',to: 'photos#index'

  #album 
  get '/Feed/album/new',to: 'albums#new'
  get '/Feed/album/show',to: 'albums#index'

  #user 

  
  get 'users/new', to: 'users#new'
  get 'users/:id', to: 'users#show'
  get '/newest/',to: 'albums#index'



  
  # For details on tusershe DSL available within this file, see https://guides.rubyonrails.org/routing.html
end







