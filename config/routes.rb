Todi::Application.routes.draw do
  # Registration
  get   'register' => "registrant#new", as: :register
  post  'register' => 'registrant#create'

  #Complete registration
  get   'register/:code' => 'registrant#edit', as: :registration
  put   'register/:code' => 'registrant#update'

  # Login
  get     'login'  => 'session#new', as: :login
  post    'login'  => 'session#create'

  # Logout
  get     'logout' => 'session#destroy', as: :logout
  delete  'logout' => 'session#destroy'

  root 'site#index'

end
