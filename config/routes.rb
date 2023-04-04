Rails.application.routes.draw do
 
  get 'books/new'
  get 'books/index'
  get 'books/show'
  get 'books/edit'
  get 'books/update'
  get 'books/destroy'
  get '/' => 'homes#top'
end
