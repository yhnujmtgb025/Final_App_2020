Rails.application.routes.draw do

  devise_for :users
  require 'sidekiq/web'
  mount Sidekiq::Web => '/sidekiq'



  resources :albums, :photos,:profiles,:followings,:followers
  
  root 'photos#index'
  # photo
  get '/photo/new',to: 'photos#new'
  post 'photos/create',to: 'photos#create'
  #album 
  get '/album/new',to: 'albums#new'
  post 'albums/create',to: 'albums#create'
  #followw

  
  

  namespace :profile do
    resources :albums, :photos, :followings, :followers,only: [:show]
  end



  
  # For details on tusershe DSL available within this file, see https://guides.rubyonrails.org/routing.html
end







