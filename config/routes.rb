Rails.application.routes.draw do
  get 'orders/index'
  get 'orders/show'
  get 'orders/new'
  get 'carts/show'
  # get 'items/index'
  # get 'items/new'
  # get 'items/show'
  # get 'items/create'
  root to: "restros#index"

# get 'carts/:id' => "carts#show", as: "cart"
# delete 'carts/:id' => "carts#destroy"


  resources :orders


  resources :restros do
    resources :categories do
      resources :items
    end 
  end


  
  resources :categories do
    resources :items
  end
  

    devise_for :users
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end


