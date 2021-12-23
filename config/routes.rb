Rails.application.routes.draw do
  root to: "restros#index"
  
  resources :restros do
    resources :categories
  end

    devise_for :users
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end


