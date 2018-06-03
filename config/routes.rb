Rails.application.routes.draw do
  get 'landing' => 'landing#index'

  controller :sessions do
    get 'login' => :new
    post 'login' => :create
    delete 'logout' => :destroy
  end

  resources :users
  resources :chores
  resources :pages

  root "pages#home"
end
