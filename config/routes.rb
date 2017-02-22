Rails.application.routes.draw do
  devise_for :users, :path => '', :path_names => {:sign_in => 'login', :sign_out => 'logout'}
  resources :users
  get 'user_mailer/contact_form'

  get 'static_pages/thank_you'

  resources :products
  get 'static_pages/about'

  get 'static_pages/contact'

  root 'static_pages#landing_page'
  # root :to => "products#index"

  post 'static_pages/thank_you'

  resources :orders, only: [:index, :show, :create, :destroy]

end
