Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'pages#home'
  get 'about' => 'pages#about'

  resources :articles

  get 'signup', to: 'users#new'

  #post 'users', to: 'users#create'
  # Another way to add signup pat
  resources :users, except: [:new]
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'

  resources :categories, except: [:destroy]
  # We make exception for ":new" because
    # we have a 'new' path already set up for articles

end
