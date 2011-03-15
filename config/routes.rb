PufferDemo::Application.routes.draw do

  namespace :admin do
    resources :pages
    resources :layouts
    resources :snippets
  end

  namespace :puffer do
    root :to => 'dashboard#index'
    resource :session
  end

  root :to => 'pages#index', :defaults => {:path => 'servise'}

end
