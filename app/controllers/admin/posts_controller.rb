class Admin::PostsController < Puffer::Base

  setup do
    group :users
  end

  index do
    field :title
    field :body
    field 'user.email'
    field :created_at
  end

  form do
    field :title
    field :body
    field :user, :columns => [:email]
    field :created_at
    field :updated_at
  end

end
