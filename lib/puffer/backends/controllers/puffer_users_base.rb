module Puffer
  class PufferUsersBase < Puffer::Base

    setup do
      group :users
      model_name :puffer_user
    end

    index do
      field :email
      field :roles
    end

    form do
      field :email
      field :password
      field :password_confirmation
      field :roles
    end

  end
end