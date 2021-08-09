class Api::V1::HomesController < ApplicationController
  def index
    @homes = Home.all
    render json: HomeSerializer.new(@homes).serializable_hash.to_json, status: 200
  end

  def show
    #TODO add validation check that current user a member of this home
    home = Home.find_by(id: params[:id])
    options = {
      include: [:users]
   }
    if home
      render json: HomeSerializer.new(home, options).serializable_hash.to_json, status: 200
    else
      render json: {message: "home not found"}
    end
  end

  def create
    home = Home.new(home_params)
    if home.save
      home.users << current_user
      render json: HomeSerializer.new(home).serializable_hash.to_json, status: 200
    else
      render json: {errors: home.errors.full_messages}, status: 400
    end
  end

  private
    def home_params
      params.require(:home).permit(:city, :nickname, :state, :country)
    end
end
