Rails.application.routes.draw do
  # get 'product/new'

  resources :categories do
    resources :products, only: [:new, :create]
  end

  root 'categories#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
