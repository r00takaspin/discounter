Rails.application.routes.draw do

  devise_for :users

  get 'main/index'

  namespace :api do
      get :discountCategories,:to=>'discount#category_list'
      get :discounts,:to=>'discount#discounts'
      get 'discountCategories/:id',:to=>'discount#discount_category'
      get 'discounts/:discount_id',:to=>'discount#find'
  end

  resources :discounts

  resources :discount_categories

  get '/upload/grid/*path' => 'gridfs#serve'

  root :to=>'main#index'
end
