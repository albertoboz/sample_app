Rails.application.routes.draw do
  resources :products
  get 'static_pages/about'

  get 'static_pages/contact'

  # root 'static_pages#landing_page'
  root :to => "products#index"

  resources :orders, only: [:index, :show, :create, :destroy]

end
