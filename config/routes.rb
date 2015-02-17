Rails.application.routes.draw do

  devise_for :users

  get 'main/index'

  namespace :api do
      get :discountCategories,:to=>'discount#discount_categories'
      get :discounts,:to=>'discount#discounts'
  end

  resources :discounts

  resources :discount_categories


  root :to=>'main#index'
end
