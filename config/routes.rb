Rails.application.routes.draw do
  resources :categories
  mount Ckeditor::Engine => '/ckeditor'
  devise_for :users
  resources :subscribers
  resources :posts do
    resources :comments
    resources :likes
    resources :categories
end
  get 'about/index'
  get 'admin/index'
  get 'posts/index'
  get 'promo/index'

  get 'promo', to: 'promo#index'
  get 'about', to: 'about#index'

  get 'users', to: 'users#index'
  get 'users/:id' => 'users#show', :as => :user
  delete 'users/:id', to: 'users#destroy'


root 'promo#index'
end
