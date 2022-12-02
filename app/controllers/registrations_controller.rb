class RegistrationsController < ApplicationController
  def create
    user = User.create!(username: params[:user][:username])

    if user
      session[:user_id] = user.id
      render json: {
        status: :created,
        user:
      }
    else
      render json: { status: 500 }
    end
  end
end
