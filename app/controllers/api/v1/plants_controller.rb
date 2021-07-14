require 'pry'
class Api::V1::PlantsController < ApplicationController

  def index
    @plants = current_user.plants

    render json: PlantSerializer.new(@plants).serializable_hash.to_json
  end

  def create
    if current_user()

      plant = current_user.plants.build(plant_params)
    end

    if plant.save
      plant.build_plant_events_collection(plant.watering_repeat_rate_days, start_date = Date.today)

      render json: PlantSerializer.new(plant).serializable_hash.to_json
    end
  end

  def destroy
    plant = Plant.find_by(id: params[:id])

    if plant.destroy
      render json: {success: "plant was deleted"}
    else
      render json: {message: "could not delete"}
    end
  end

  private
  def plant_params
    params.require(:plant).permit(:common_name, :scientific_name, :location, :watering_repeat_rate_days)
  end

end
