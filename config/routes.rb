Rails.application.routes.draw do

  root 'static_pages#landing_page'

  devise_for :users, controllers: { registrations: "user_registrations" }
  resources :users, except: [:new, :create]

  get 'static_pages/about'
  get 'static_pages/index'
  get 'static_pages/contact'

  post 'static_pages/thank_you'
  post 'payments/create'
  get 'payments/thanks'

  resources :products do
    resources :comments
    resources :payments
  end

  resources :orders, only: [:index, :show, :create, :destroy]

end
