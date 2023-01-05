Rails.application.routes.draw do
  get 'books/new'
  get 'top' => 'homes#top'
  post 'books' => 'books#create'
  get 'books' => 'books#index'
  get 'books/:id' => 'books#show', as: 'book'
  get 'books/:id' => 'books#edit'
  delete 'books/:id' => 'books#destroy', as: 'destroy_book'
end
