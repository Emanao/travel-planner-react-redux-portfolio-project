class BookingsController < ApplicationController
    def index
        bookings = @trip.bookings
    end

    def create
        @trip.booking.build(bookings_params)
    end

    def show
        booking = @trip.bookings.find(params[:id])
        reder json: booking
    end
    
    private
    
    def set_booking
        @trip = Trip.find(params[:trip_id])
    end

    def bookings_params
        params.require(:booking).permit(:name, :status, :trip_id)
    end
end
