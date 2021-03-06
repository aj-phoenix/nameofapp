Rails.application.routes.draw do
  devise_for :users, path: '', path_names: { sign_in: 'login', sign_out: 'logout' } , controllers: { registrations: "user_registrations" }
  resources :users
  resources :products do
    resources :comments
  end
  resources :products
  resources :orders, only: [:index, :show, :create, :destroy]
  mount ActionCable.server => '/cable'
  get 'simple_pages/about'
  get 'simple_pages/contact'
  get 'simple_pages/index'
  get 'products/index'
  get 'products/new'
  get 'products/edit'
  get 'products/show'
  root 'simple_pages#landing_page'

  post 'simple_pages/thank_you'
  post '/payments/create'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
