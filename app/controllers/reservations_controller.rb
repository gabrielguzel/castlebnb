class ReservationsController < ApplicationController
  before_action :set_reservation, only: [:edit, :update]
  def new
    @reservation = Reservation.new
  end

  def create
    @reservation = Reservation.new(params_reservation)
    if @reservation.save
      flash[:success] = "Reservation successfully created"
      redirect_to @reservation
    else
      flash[:error] = "Something went wrong"
      render 'new'
    end
  end

  def edit
    @reservation
  end

  def update
      if @reservation.update_attributes(params_reservation)
        flash[:success] = "Reservation was successfully updated"
        redirect_to @reservation
      else
        flash[:error] = "Something went wrong"
        render 'edit'
      end
  end

  private

  def set_reservation
    @reservation= Reservation.find(params[:id])
  end

  def params_reservation
    params.require(:reservation).permit(:arrival_date,:departure_date)
  end
  
end
