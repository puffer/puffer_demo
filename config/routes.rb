PufferDemo::Application.routes.draw do

  namespace :admin do
    resources :users
    resources :posts
  end

end
