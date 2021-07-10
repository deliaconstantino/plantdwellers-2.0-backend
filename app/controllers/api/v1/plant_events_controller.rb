class Api::V1::PlantEventsController < ApplicationController


  def index
    render json: {message: "hi"}
  end

  # def create
  #   binding.pry
  # end
end
