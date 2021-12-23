Rails.application.routes.draw do
  # get 'items/index'
  # get 'items/new'
  # get 'items/show'
  # get 'items/create'
  root to: "restros#index"

  resources :restros do
    resources :categories do
      resources :items
    end
  end

    devise_for :users
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end


