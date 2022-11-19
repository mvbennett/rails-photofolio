Rails.application.routes.draw do
  get 'hello_world', to: 'hello_world#index'
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  # API
  namespace :api, defaults: { format: :json } do
    namespace :v1 do
      resources :photos, only: [:index]
    end
  end
end
