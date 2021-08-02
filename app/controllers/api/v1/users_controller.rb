class Api::V1::UsersController < ApplicationController
  before_action :authorized, except: [:create]

  def index
    @users = User.all

    # render json: @users

    render json: UserSerializer.new(@users).serializable_hash.to_json
  end

  def create
    user = User.new(user_params)

    if user.save
      token = encode_token(user_id: user.id)
      render json: {user: UserSerializer.new(user), jwt: token}, status: :accepted
    else
      render json: {error: "could not save"}, status: 400
    end
  end

  private
  def user_params
    params.require(:user).permit(:name, :email, :password)
  end

end
