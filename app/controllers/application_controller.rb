class ApplicationController < ActionController::API
  before_action :authorized, except: [:login]

  def profile # should be in a different controller
    if current_user()
      render json: UserSerializer.new(current_user)
    end
  end

  def encode_token(payload) #{ user_id: 2 }
    JWT.encode(payload, ENV["JWT_SECRET"]) #issue a token, store payload in token
  end

  def auth_header
    request.headers['Authorization'] # Bearer <token>
  end

  def decoded_token
    if auth_header()
      token = auth_header.split(' ')[1] #[Bearer, <token>]
      begin
        JWT.decode(token, ENV["JWT_SECRET"], true, algorithm: 'HS256')
        # JWT.decode => [{ "user_id"=>"2" }, { "alg"=>"HS256" }]
      rescue JWT::DecodeError
        nil
      end
    end
  end

  def logged_in?
    !!current_user
  end

  def authorized
    render json: { message: 'Please log in' }, status: :unauthorized unless logged_in?
  end

  def current_user
    if decoded_token()
      user_id = decoded_token[0]['user_id'] #[{ "user_id"=>"2" }, { "alg"=>"HS256" }]
      @user = User.find_by(id: user_id)
    else
      nil
    end
  end
end
