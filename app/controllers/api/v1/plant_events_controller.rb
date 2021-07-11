class Api::V1::PlantEventsController < ApplicationController


  def index
    @events = current_user.plant_events

    render json: @events
  end


end
