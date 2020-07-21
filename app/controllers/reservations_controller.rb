class ReservationsController < ApplicationController
    def create
        @reservation = reservation.new(reservation_params)
        if @reservation.save
          redirect_to castle_path(@castle)
        else
          render 'new'
        end
    end

    def new
        @reservation = Reservation.new
    end

    def edit
        @reservation 
    end 

    def update
            if @reservation.update_attributes(reservation_params)
                flash[:success] = "reservation was successfully updated"
                redirect_to reservation_url
            else
                flash[:error] = "Something went wrong"
                render 'edit'
            end
        end

    def destroy
        @reservation = reservation.find(params[:id])
        @reservation.destroy
        redirect_to reservation_url
    end

  private

    def reservation_params
        params.require(:reservation).permit(:arrival_date, :departure_date, :reservation, :user)
    end
end
