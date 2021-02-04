Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'posts/index'
  get 'posts/new', to: 'posts#new'# ruta collection
  post 'posts', to: 'posts#create'

  get 'posts/:id', to: 'posts#show', as: 'posts_show' # ruta member
  get 'posts/:id/edit', to: 'posts#edit', as: 'posts_edit'
  patch 'posts/:id', to: 'posts#update', as: 'post'

end
