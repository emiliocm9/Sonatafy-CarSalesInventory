Rails.application.routes.draw do
  get 'cars/new'
  get 'cars/create'
  get 'cars/update'
  get 'cars/edit'
  get 'cars/destroy'
  get 'cars/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :cars
  root to: 'home#index'
end
