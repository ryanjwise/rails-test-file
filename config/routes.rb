Rails.application.routes.draw do
  resources :scaffs
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'scaffs#index'
end
