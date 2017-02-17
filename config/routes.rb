Rails.application.routes.draw do
  get 'static_pages/thank_you'

  resources :products
  get 'static_pages/about'

  get 'static_pages/contact'

  root 'static_pages#landing_page'
  # root :to => "products#index"

  post 'static_pages/thank_you'

  resources :orders, only: [:index, :show, :create, :destroy]

end
