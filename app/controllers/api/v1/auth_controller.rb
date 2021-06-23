class Api::V1::AuthController < ApplicationController

  def create
    user = User.find_by(email: params[:email])
    if user && user.authenticate(params[:password])
      token = encode_token(user_id: user.id)
      render json: {user: UserSerializer.new(user), jwt: token}, status: :accepted
    else
      render json: {message: "invalid login credentials"}, status: :unauthorized
    end
  end

  private
    #TODO: santitize incoming input like:
    # def user_login_params
    #   # params { user: {username: 'Chandler Bing', password: 'hi' } }
    #   params.require(:user).permit(:username, :password)
    # end

end
