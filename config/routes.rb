Rails.application.routes.draw do
  get '/books/new', to: 'books#new'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root :to =>"homes#top"
  post 'books' => 'books#create'
  get 'books' => 'books#index'
  # .../books/1 や .../books/3 に該当する
  get 'books/:id' => 'books#show', as: 'book'
  get 'books/:id/edit' => 'books#edit', as: 'edit_book' 
  delete 'books/:id' => 'books#destroy', as: 'destroy_book'
  patch 'books/:id' => 'books#update', as: 'update_book'
end














