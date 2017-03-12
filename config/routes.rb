Rails.application.routes.draw do
  
  resources :listings



  devise_for :users
  get 'pages/index'
root :to => "pages#index"

get 'manage-listing/:id/basics' => 'listings#basics', as: 'manage_listing_basics'

get '/search' => 'pages#search'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
