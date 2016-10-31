Rails.application.routes.draw do

  resources :categories
  resources :incomes
  get 'home/index'

  get 'welcome/index'
  
  root 'home#index'

  controller :sessions do
    get 'login' => :new
    post 'login' => :create
    delete 'logout' => :destroy
  end

  get 'sessions/new'

  get 'sessions/create'

  get 'sessions/destroy'

  get '/auth/:provider/callback', to: 'sessions#createFacebook'

  resources :users

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end