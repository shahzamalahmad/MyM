Rails.application.routes.draw do
  # get 'article/index'
  # get 'article/show'
  get 'articles/about'
  # get 'article/new'
  # get 'article/edit'
  # get 'article/update'
  # get 'article/destroy'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  resources :articles
  root "articles#index"
end
