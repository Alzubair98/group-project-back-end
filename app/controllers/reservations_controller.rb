class ReservationsController < ApplicationController
  def index
    reservations = Reservation.all
    render json: {
      reservations:
    }
  end

  def new; end

  def create
    reservations = Reservation.create!(user_id: params[:reservation][:user_id],
                                       location: params[:reservation][:location])

    if reservations
      render json: {
        reservations:
      }
    else
      render json: {
        status: 500
      }
    end
  end
end
