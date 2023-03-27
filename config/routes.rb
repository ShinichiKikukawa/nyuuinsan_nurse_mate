Rails.application.routes.draw do
  get 'stores/index'
  get 'stores/new'
  get 'stores/create'
  get 'stores/update'
  get 'stores/destroy'
  get 'ng_items/new'

  root 'static_pages#top'
  get 'about', to: 'static_pages#about'
  get 'yarukoto', to: 'static_pages#yarukoto'
  get '/signup', to: 'users#new'
  
  get    '/login', to: 'sessions#new'
  post   '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  
  resources :users do
    resources :tasks
    resources :ng_items
  end
end
