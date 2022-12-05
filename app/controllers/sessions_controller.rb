class SessionsController < ApplicationController
  include CurrentUserConcern
  def create
    user = User.find_by(username: params[:user][:username])

    if user
      session[:user_id] = user.id
      render json: {
        stauts: :created,
        logged_in: true,
        user:
      }
    else
      render json: { stauts: 401 }
    end
  end

  def logged_in
    if @current_user
      render json: {
        logged_in: true,
        user: @current_user
      }
    else
      render json: {
        logged_in: false
      }
    end
  end

  def logout
    reset_session
    render json: { status: 200, logged_out: true }
  end
end
