Rails.application.routes.draw do
  # resources :posts, only: [:index, :show, :destroy]
  # resources :posts, except: [:index, :show], path: 'textos'

  resources :posts

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'posts#index'
end
