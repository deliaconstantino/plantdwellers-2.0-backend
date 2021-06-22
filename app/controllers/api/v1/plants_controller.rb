class Api::V1::PlantsController < ApplicationController

  def index
    @plants = Plant.all

    # render json: @plants
    render json: PlantSerializer.new(@plants).serializable_hash.to_json
  end

end
