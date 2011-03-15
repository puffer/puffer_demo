PufferDemo::Application.routes.draw do

  match '/admin' => 'puffer/dashboard#index', :as => :admin

  namespace :admin do
    resources :pages
    resources :layouts
    resources :snippets
  end

  namespace :puffer do
    root :to => 'dashboard#index'
    resource :session
  end

end
