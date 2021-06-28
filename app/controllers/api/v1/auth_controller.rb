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

  def encode_token(payload) #{ user_id: 2 }
    JWT.encode(payload, 'my_s3cr3t') #issue a token, store payload in token
  end

  def auth_header
    request.headers['Authorization'] # Bearer <token>
  end

  def decoded_token
    if auth_header()
      token = auth_header.split(' ')[1] #[Bearer, <token>]
      begin
        JWT.decode(token, 'my_s3cr3t', true, algorithm: 'HS256')
        # JWT.decode => [{ "user_id"=>"2" }, { "alg"=>"HS256" }]
      rescue JWT::DecodeError
        nil
      end
    end
  end

  def current_user
    if decoded_token()
      user_id = decoded_token[0]['user_id'] #[{ "user_id"=>"2" }, { "alg"=>"HS256" }]
      @user = User.find_by(id: user_id)
    else
      nil
    end
  end

  def logged_in?
    !!current_user
  end

  def authorized
    render json: { message: 'Please log in' }, status: :unauthorized unless logged_in?
  end




  # before_action :set_newsletter_email, except: [:show, :edit]

  # def create
  #   user = User.find_by(email: params[:email])
  #   if user && user.authenticate(params[:password])
  #     token = encode_token(user_id: user.id)
  #     render json: {user: UserSerializer.new(user), jwt: token}, status: :accepted
  #   else
  #     render json: {error: "invalid login credentials"}, status: :unauthorized
  #   end
  # end

  # def auth_header
  #   request.headers['Authorization']
  # end

  # def token
  #   if auth_header()
  #     auth_header.split(" ")[1]
  #   end
  # end

  # def decoded_token
  #   if token()
  #     begin
  #       JWT.decode(token, ENV["JWT_SECRET"], true, algorithm: 'HS256')
  #     rescue JWT::DecodeError
  #       nil
  #     end
  #   end
  # end


  #   def find_user
  #     if decoded_token()
  #       user_id = decoded_token[0][user_id]

  #       user = User.find_by(id: user_id)
  #     end
  #   end

  #   # def delete
  #   #   if user
  #   # end

  #   # begin
  #   #   JWT.decode(token, 'my_s3cr3t', true, algorithm: 'HS256')
  #   #   # JWT.decode => [{ "user_id"=>"2" }, { "alg"=>"HS256" }]
  #   # rescue JWT::DecodeError
  #   #   nil
  #   # end
  #   binding.pry

  # end

  # private
  #   #TODO: santitize incoming input like:
  #   # def user_login_params
  #   #   # params { user: {username: 'Chandler Bing', password: 'hi' } }
  #   #   params.require(:user).permit(:username, :password)
  #   # end

  #   def logout_user_params
  #     params.require(:auth).permit(:token)
  #   end

end
