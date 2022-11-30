Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :photographs, only: [:new, :create]
  resources :users, only: :show

  # API
  namespace :api, defaults: { format: :json } do
    namespace :v1 do
      resources :photos, only: [:index, :new]
    end
  end

  # get '/:username', to: 'users#show'
end
