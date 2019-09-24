Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  #CREATE

  get '/authors/new', to: 'authors#new', as: 'new_author'
  get '/posts/new', to: 'posts#new', as: 'new_post'

  post '/authors', to: 'authors#create', as: 'create_author'
  post '/posts', to: 'posts#create', as: 'create_post'

  #READ

  get '/authors', to: 'authors#index', as: 'authors'
  get '/posts', to: 'posts#show', as: 'posts'

  get '/authors/:id', to: 'authors#show', as: 'author'
  get '/posts/:id', to: 'posts#show', as: 'post'

  #UPDATE

  get '/authors/:id/edit', to: 'authors#edit', as: 'edit_author'
  get '/posts/:id/edit', to: 'posts#edit', as: 'edit_post'

  patch '/author/:id', to: 'authors#update', as: 'update_author'
  patch '/posts/:id', to: 'posts#update', as: 'update_post'

  
end
