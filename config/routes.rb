Rails.application.routes.draw do

  get 'cgroups/index'

  get 'contents/get'

  get 'content/show'

  get 'test/index'

  post 'content/create'

  devise_for :users
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  root to: 'home#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
