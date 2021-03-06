class AuthController < ApplicationController
  skip_before_action :authenticate_user!

  def register
    user = User.new(user_params)
    if user.save
      token = Auth.issue({id: user.id, is_store: user.is_store})
      render json: { token: token, user: UserSerializer.new(user)}, status: :ok
    else
      render json: { errors: user.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def login
    user = User.find_by_email(params[:email])
    if user && user.authenticate(params[:password])
      token = Auth.issue({id: user.id, is_store: user.is_store})
      render json: { token: token, user: UserSerializer.new(user)}, status: :ok
    else
      render json: { errors: ["Invalid login credentials."]}, status: 401
    end
  end

  private
    def user_params
      params.permit(:username, :email, :first_name, :last_name, :password, :password_confirmation, :is_store)
    end
end
