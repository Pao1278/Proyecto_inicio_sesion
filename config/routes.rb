Rails.application.routes.draw do
  resources :usuarios
  get 'general/index'
  root "general#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end