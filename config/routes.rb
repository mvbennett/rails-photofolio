Rails.application.routes.draw do
  get 'galleries/show'
  get 'galleries/new'
  get 'galleries/edit'
  get 'galleries/update'
  get 'galleries/delete'
  get 'photographs/new'
  get 'photographs/edit'
  get 'photographs/update'
  get 'photographs/show'
  get 'photographs/delete'
  get 'gallery/new'
  get 'gallery/edit'
  get 'gallery/update'
  get 'gallery/show'
  get 'gallery/delete'
  get 'hello_world', to: 'hello_world#index'
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html



  # API
  namespace :api, defaults: { format: :json } do
    namespace :v1 do
      resources :photos, only: [:index, :new]
    end
  end
end
