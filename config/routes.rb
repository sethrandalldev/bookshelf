Rails.application.routes.draw do
  get 'pages/home'
  get 'books/index'
  get 'books/show'
  get 'articles/index'
  get 'articles/show'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root "pages#home"

  resources :books do
    collection do
      get 'list'
    end 
  end
end
