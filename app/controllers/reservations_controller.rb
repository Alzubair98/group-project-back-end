class ReservationsController < ApplicationController
  def index
    reservations = Reservation.all
    render json: reservations
  end

  def new; end

  def create
    reservations = Reservation.create!(user: User.find_by(username: params[:reservation][:user]),
                                       bike: Bike.find_by(name: params[:reservation][:bike]),
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


  def destroy 
    reservation = Reservation.find(params[:reservation][:id])
    reservation.destroy
    render json: {status:200, reservation_deleted: true}
  end


end
