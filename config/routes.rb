Todi::Application.routes.draw do
  # Registration
  get   'register' => "registrant#new", as: :register
  post  'register' => 'registrant#create'

  #Complete registration
  get   'register/:code' => 'registrant#edit'
  put   'register/:code' => 'registrant#update', as: :registration_complete

  # Login
  get     'login'  => 'session#new', as: :login
  post    'login'  => 'session#create'

  # Logout
  get     'logout' => 'session#destroy', as: :logout
  delete  'logout' => 'session#destroy'

  # Message
  get 'message' => 'messages#new'
  post 'message' => 'messages#create', as: :message_new 

  resources :users do
    resources :messages
  end 

  root 'site#index' 

end
