Rails.application.routes.draw do


  root 'books#index'

  get 'books/new' => 'books#new', as: :new_book

  get 'books/:id' => 'books#show', as: :book

  get 'books/:id/edit' => 'books#edit', as: :edit_book

  patch 'books/:id' => 'books#update'

  post 'books' => 'books#create'

  delete 'books/:id' => 'books#destroy'


  get 'authors/new' => 'authors#new', as: :new_author

  get 'authors/:id' => 'authors#show', as: :author

  post 'authors' => 'authors#create'


  get 'registration' => 'users#new', as: :new_user

  post 'registration' => 'users#create', as: :create_user

get 'checkouts/new' => 'checkouts#new', as: :new_checkout

post 'checkouts' => 'checkouts#create', as: :checkouts

post 'checkouts/:book_id/checkin' => 'checkouts#checkin', as: :checkin


get "api/books" => 'api/books#index', as: :api_books
get "api/books/:id" => 'api/books#show', as: :api_book


post 'api/checkouts' => 'api/checkouts#create', as: :api_checkouts

post 'api/checkouts/:book_id/checkin' => 'api/checkouts#checkin', as: :api_checkin





end
