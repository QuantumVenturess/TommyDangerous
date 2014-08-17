Tommydangerous::Application.routes.draw do
  root 'pages#index'

  resources :messages
end
