Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # Read all
  root 'articles#index'
  # create
  get 'articles/new', to: 'articles#new', as: :new_article
  post '/articles', to: 'articles#create'
  # read one - show route need to be *after* new route
  get '/articles/:id', to: 'articles#show', as: :article
  # update
  get '/articles/:id/edit', to: 'articles#edit', as: :edit_article
  patch '/articles/:id', to: 'articles#update'
  # destroy
  delete '/articles/:id', to: 'articles#destroy'
end
