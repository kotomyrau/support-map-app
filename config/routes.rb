Rails.application.routes.draw do
  devise_for :admins, path: 'admin', controllers: { registrations: "admins/registrations"}
  devise_for :users, path:'account', controllers: { registrations: "users/registrations" }
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'pages#home'
  resources :stores, path: 'stores'
  # resources :users, path:'supporters', only: [:index]
  resources :users, path:'supporters', only: [:index, :show]
  resources :admins, path:'admin', only: [:index]

end
