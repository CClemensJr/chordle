Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :chores
  resources :pages

  get "chores/random_chore" => 'chores#random_chore', as: :random_chore 

  root "pages#home"
end
