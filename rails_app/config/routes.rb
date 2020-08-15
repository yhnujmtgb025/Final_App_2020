Rails.application.routes.draw do
  get 'photos/index'
  get 'photo/index'
  get 'albums/:id/edit', to: 'albums#edit'
  get 'photos/', to: 'photos#index'
  get 'photos/album', to: 'photos#new'

  resources :albums, :news, :photos, :users

  root 'users#new'
  get 'users/new', to: 'users#new'
  get 'users/:id', to: 'users#show'
 
  get '/newest/',to: 'albums#index'



  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
