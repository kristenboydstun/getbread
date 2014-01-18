Getbread::Application.routes.draw do

  root 'pages#front'

  resources :events

end
