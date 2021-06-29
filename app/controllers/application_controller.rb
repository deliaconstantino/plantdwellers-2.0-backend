class ApplicationController < ActionController::API

  def encode_token(payload)
    JWT.encode(payload, ENV["JWT_SECRET"])
  end
end
