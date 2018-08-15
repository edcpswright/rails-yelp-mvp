Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # get 'restaurants', to: 'restaurants#index'
  # get 'restaurants/new', to: 'restaurants#new'
  # # get 'reviews/new', to: 'reviews#new'
  # post 'restaurants', to: 'restaurants#create'
  # # post 'reviews', to: 'reviews#create'
  # get 'restaurants/:id/edit', to: 'restaurants#edit', as: 'edit'
  # patch 'restaurants/:id', to: 'restaurants#update', as: 'update'
  # delete 'restaurants/:id', to: 'restaurants#destroy', as: 'delete'
  # get 'restaurants/:id', to: 'restaurants#show', as: 'restaurant'
  # resources :reviews
  resources :restaurants do
    resources :reviews, only: [:index, :new, :create ]
  end
end
