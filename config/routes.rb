Rails.application.routes.draw do
  get 'books/index'
  get 'books/show'
  get 'articles/index'
  get 'articles/show'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
