require 'pry'
class Api::V1::UsersController < ApplicationController
  before_action :authorized, except: [:create]

  def create
    user = User.new(user_params)
    if user.save
      token = encode_token(user_id: user.id)
      render json: {user: UserSerializer.new(user), jwt: token}, status: 200
    else
      render json: {errors: user.errors.full_messages}, status: 400
    end
  end

  def profile
    if current_user()
      render json: UserSerializer.new(current_user), status: 200
    end
  end

  private
  def user_params
    params.require(:user).permit(:name, :email, :password)
  end

end
