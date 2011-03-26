PufferDemo::Application.routes.draw do

  namespace :admin do
    resources :pages
    resources :layouts
    resources :snippets
  end

  match '/admin' => 'puffer/dashboard#index', :as => :admin

  namespace :admin do
    resources :pages
    resources :layouts
    resources :snippets
    resources :users
    resources :posts
  end

  namespace :puffer do
    root :to => 'dashboard#index'
    resource :session
  end

end
