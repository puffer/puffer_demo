PufferDemo::Application.routes.draw do

  match '/admin' => 'puffer/dashboard#index', :as => :admin

  namespace :admin do
    resources :pages
    resources :layouts
    resources :snippets
    resources :users
  end

  namespace :puffer do
    root :to => 'dashboard#index'
    resource :session
  end

end
