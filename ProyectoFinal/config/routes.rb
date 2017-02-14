Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
resources :aservices
resources :services
resources :rols
resources :userrols
resources :useraservices
resources :users


root 'welcome#index'

end
