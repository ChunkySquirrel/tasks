Rails.application.routes.draw do
<<<<<<< HEAD

  get "signup" => 'users#new'
  get "login" => 'sessions#new'
  get "logout" => 'sessions#destroy'

  get '/auth/:provider/callback', to: 'authentications#create'
  resources :users
  resources :sessions
  resources :tasks do
  resources :notes
end
  resources :reminders
  # get tasks/6/notes/2


  root to: 'home#index'
  get "about" => 'home#about'
=======
  resources :tasks
  root to: 'tasks#index'
>>>>>>> c2670d2b8950f5d246f872278be627777ba05d49
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
