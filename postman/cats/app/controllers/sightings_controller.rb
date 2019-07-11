class SightingsController < ApplicationController
    
    def create
        @sighting = Sighting.create(sighting_params)
        render json: @sighting
        # post /sightings
    end
    
    def update 
        @sighting = Sighting.find(params[:id])
        @sighting.update(sighting_params)
        render json: @sighting
        # put /sighting/id
    end
    
    def index 
        @sightings = Sighting.where(date: params[:start_date]..params[:end_date])
        render json: @sightings
    end
    
    private
    
    def sighting_params
        params.require(:sighting).permit(:cat_id, :date, :lat, :long, :start_date, :end_date)
    end
    
end