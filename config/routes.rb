Todi::Application.routes.draw do
  # Registration
  get   'register' => "registrant#new", as: :register
  post  'register' => 'registrant#create'

  #Complete registration
  get   'register/:code' => 'registrant#edit', as: :registration_complete
  put   'register/:code' => 'registrant#update'

  # Login
  get     'login'  => 'sessions#new', as: :login
  post    'login'  => 'sessions#create'

  # Logout
  get     'logout' => 'sessions#destroy', as: :logout
  delete  'logout' => 'sessions#destroy'


  resources :users do
    resources :messages, except: [:index]  
  end 

  root 'site#index' 

end
 