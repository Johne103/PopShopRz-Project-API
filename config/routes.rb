Rails.application.routes.draw do
  get 'auth/register'

  get 'auth/login'

  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
