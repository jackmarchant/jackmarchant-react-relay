Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users
  get 'home', to: 'home#show'
  resources :posts
  root 'posts#index'
  match '*path' => 'error#error_404', via: :all

end
