class TripsController < ApplicationController
    def index
        all = Trip.all
        render all.to_json(:except=>[:created_at, :updated_at])
    end

    def create
        trip = Trip.new(trip_params) 
        if trip.save
            render json: trip            
        else
            render json:(error: "Error creating trip") 
        end
    end

    def show
        trip= Trip.find(params[:id])
        render json: trip
    end
    
    private
    def trip_params
        params.require(:trip).permit(:name, :notes)
    end
end
