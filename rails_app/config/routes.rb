Rails.application.routes.draw do
  get 'albums/:id/edit', to: 'albums#edit'
  get 'albums/update', to:'album#update'
  get '/photos', to: 'photos#index', as: :photo

  resources :news
  resources :albums

  
  get 'users', to: 'users#index', as: :users
  get 'users/:id', to: 'users#show', as: :user
  root 'users#index'
  get '/newest/',to: 'albums#index'



  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
