class Api::V1::PlantEventsController < ApplicationController


  def index
    @events = current_user.home.plant_events

    # options = {
    #   include: [:plants]
    # }

    # render json: @events
    render json: PlantEventSerializer.new(@events).serializable_hash.to_json
  end


end
