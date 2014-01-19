Getbread::Application.routes.draw do

  root 'pages#front'

  resources :events do
    member do
      get 'confirmation'
      get 'admin'
    end

    resources :items
  end


end
