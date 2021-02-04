Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'posts/index' # ruta collection
  get 'posts/new', to: 'posts#new'
  post 'posts', to: 'posts#create'

  get 'posts/:id', to: 'posts#show', as: 'posts_show' # ruta member
  get 'posts/:id/edit', to: 'posts#edit', as: 'posts_edit'
  patch 'posts/:id', to: 'posts#update', as: 'post'
  delete 'posts/:id', to: 'posts#destroy', as: 'posts_destroy'

end
