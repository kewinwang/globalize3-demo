Schuster::Application.routes.draw do

  root :to => 'pages#index'
  resources :aktuelles

end
