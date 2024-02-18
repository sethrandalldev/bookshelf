Rails.application.routes.draw do
  get 'authors/index'
  get 'authors/show'
  get 'pages/home'
  get 'books/index'
  get 'books/show'
  get 'books/new'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root "pages#home"

  resources :books do
    collection do
      get 'list'
    end 
  end
   resources :authors do
    collection do
    end 
  end
end
