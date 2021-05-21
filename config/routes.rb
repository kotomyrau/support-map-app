Rails.application.routes.draw do
  devise_for :admins
  devise_for :users, path:'account', :controllers => { :registrations => :registrations }
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'pages#home'
  resources :stores, path: 'stores'
  # resources :users, path:'supporters', only: [:index]
  resources :users, path:'supporters', only: [:index, :show]
end
