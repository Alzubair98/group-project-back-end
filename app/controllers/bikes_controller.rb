class BikesController < ApplicationController
  before_action :set_bike, only: %i[show edit update destroy]

  # GET /bikes or /bikes.json
  def index
    @bikes = Bike.all
    if @bikes
      render json: @bikes, status: 200
    else
      render json: @bikes.errors, status: :unprocessable_entity
    end
  end

  # GET /bikes/1 or /bikes/1.json
  def show; end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_bike
    @bike = Bike.find(params[:id])
    if @bike
      render json: @bike, status: 200
    else
      render json: @bike.errors, status: :unprocessable_entity
    end
  end
end
