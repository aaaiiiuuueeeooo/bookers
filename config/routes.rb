Rails.application.routes.draw do
  get 'lists/destroy'
  get 'lists/create'
  get 'books/new' 
  get '/books' => 'books#index'
  post 'books' => 'books#create'
  get 'books/:id' => 'books#show', as: 'list'
  get 'books/:id/edit' => 'books#edit', as: 'edit_list'
  patch 'books/:id' => 'books#update', as: 'update_list'
  get '/' => 'homes#top'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
