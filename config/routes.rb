Rails.application.routes.draw do
  get 'main/index'

  resources :discounts

  resources :discount_categories

  root :to=>'main#index'
end
