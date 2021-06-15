class TripsController < ApplicationController
    def index
        all = Trip.all
        render all.to_json(:except=>[:created_at, :updated_at])
    end
    def create 

    end
    def show

    end
    private
    def trip_params
        params.require(:trip).permit(:name, :notes)
    end
end
