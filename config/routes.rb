Getbread::Application.routes.draw do

  root 'pages#front'

  resources :events do
    member do
      get 'confirmation'
    end
  end


end
