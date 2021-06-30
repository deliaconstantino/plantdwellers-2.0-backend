require 'pry'
class Api::V1::PlantsController < ApplicationController

  def index
    @plants = current_user.plants

    render json: PlantSerializer.new(@plants).serializable_hash.to_json
  end

end
