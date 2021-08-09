require 'pry'
class Api::V1::AuthController < ApplicationController
  before_action :authorized, except: [:login]

  def login
    user = User.find_by(email: params[:email])
    if user && user.authenticate(params[:password])
      token = encode_token(user_id: user.id)
      render json: {user: UserSerializer.new(user), jwt: token}, status: :accepted
    else
      render json: {error: "invalid login credentials"}, status: :unauthorized
    end
  end

end
