class Api::V1::UsersController < ApplicationController

  def index
    @users = User.all

    # render json: @users

    render json: UserSerializer.new(@users).serializable_hash.to_json
  end

end
