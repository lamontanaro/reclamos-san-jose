Rails.application.routes.draw do
  devise_for :admins
  root 'welcome#index'
  resources :claims
  resources :my_claim
  resource :digital, only: [:show], controller: 'static_pages/digital'

  namespace :admin do
    root 'claims#index'
    resources :claims
  end
end
