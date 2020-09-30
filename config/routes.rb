Rails.application.routes.draw do
  root 'users#login_page'
  get '/users/new', to: 'users#new'
  post '/users', to: 'users#create'

  get '/login',to: 'users#login_page'
  post '/login',to: 'users#login'

  get '/dashboard', to: 'home#index'
  resource 'utilities', only: [] do
    get 'index'
    get :animation
    get :border
    get :color
    get :other
  end
end
