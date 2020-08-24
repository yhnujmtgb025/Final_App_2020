Rails.application.routes.draw do
  devise_for :users
  require 'sidekiq/web'
  mount Sidekiq::Web => '/sidekiq'


  root 'photos#index'
  resources :albums, :photos, :users
  # photo
  get 'photos/new',to: 'photos#new'
  get '/photos/:id', to: 'photos#show' 
  #album 
   get 'albums/new',to: 'albums#new'
  get 'albums/show',to: 'albums#index'

  #user 
  get 'users/:id', to: 'users#show'
  get '/newest/',to: 'albums#index'



  
  # For details on tusershe DSL available within this file, see https://guides.rubyonrails.org/routing.html
end







