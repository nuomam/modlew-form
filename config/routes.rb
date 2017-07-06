Rails.application.routes.draw do
  get "/" => redirect("https://www.weldom.fr/")
  mount Attachinary::Engine => "/attachinary"
  devise_for :users, controllers: {:registrations => "users/registrations"}
  # root to: 'pages#home'
  # resources :registration_steps
  # get '/confirmation/', to: 'pages#confirmation', as: 'confirmation'
  # get '/export_22wibi/', to: 'pages#export_csv', as: 'export_csv'
  # get "/admin", to: 'admin/admins#index'
  # namespace :admin do
  #   resources :users
  # end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
