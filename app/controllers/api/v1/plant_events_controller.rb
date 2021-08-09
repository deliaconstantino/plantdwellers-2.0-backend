class Api::V1::PlantEventsController < ApplicationController


  def index
    @events = current_user.home.plant_events

    # options = {
    #   include: [:plants]
    # }

    # render json: @events
    render json: PlantEventSerializer.new(@events).serializable_hash.to_json, status: 200
  end

  def update
    event = PlantEvent.find_by(id: params[:id])
    if event
      event.update(plant_event_params)
      render json: PlantEventSerializer.new(event).serializable_hash.to_json, status: 200
    else
      render json: {message: "plant event not found"}
    end
  end

  private
  def plant_event_params
    params.require(:plant_event).permit(:completed, :date, :event_type, :plant_id, :id)
  end
end
