class Admin::UsersController < Puffer::Base

  setup do
    group :users
  end

  index do
    field :email
    field :login_count
    field :failed_login_count
    field :last_request_at
    field :current_login_at
    field :last_login_at
    field :current_login_ip
    field :last_login_ip
  end

  form do
    field :email
    field :password
    field :password_confirmation
  end

end
