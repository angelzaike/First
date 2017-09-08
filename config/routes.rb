Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: "user_registrations" }
  resources :users
  resources :products 
  get 'static_pages/about'

  get 'static_pages/index'

  get 'static_pages/contact'

  post 'static_pages/thank_you'

  get 'static_pages/order'

  root 'static_pages#landing_page'

  resources :orders, only: [:index, :show, :create, :destroy]
 
  root 'home#index'

resources :products do
  resources :comments
end
resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
