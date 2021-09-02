Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  namespace :api do 
    namespace :v1 do 
      resources :recipes, only: [:index, :create, :show, :destroy]
      resources :food_queries, only: [:index, :create, :show, :destroy]
      resources :foods, only: [:index, :create, :show, :destroy]
      resources :categories, only: [:index, :create, :show, :destroy]
    end
  end
end