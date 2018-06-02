Rails.application.routes.draw do
  get 'landing/index'

  get 'sessions/new'

  get 'sessions/create'

  get 'sessions/destroy'

  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :chores
  resources :pages

  root "pages#home"
end
