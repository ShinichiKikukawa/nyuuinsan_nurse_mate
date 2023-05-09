Rails.application.routes.draw do
  get 'ng_items/new'

  root 'static_pages#top'
  get 'about', to: 'static_pages#about'
  get 'yarukotolist', to: 'static_pages#yarukotolist'
  get '/signup', to: 'users#new'

  get    '/login', to: 'sessions#new'
  post   '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'

  resources :users do
    resources :tasks
    resources :ng_items
  end
end
