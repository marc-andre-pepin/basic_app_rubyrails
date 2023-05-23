Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get     '/posts',     to: 'posts#retrieve_all'
  post    '/posts',     to: 'posts#create'
  put     '/posts/:id', to: 'posts#update'
  delete  '/posts/:id', to: 'posts#delete'

  post    '/users',     to: 'users#create'

end
