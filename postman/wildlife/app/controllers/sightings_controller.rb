class SightingsController < ApplicationController
    #need routes, mas many etc
    def create
        @sighting = Sighting.create(sighting_parmas)
        #post /sightings
    end
    
    private
    
    def sighting_parmas
        params.require(:sighting).permit(:animal_id, :date, :lat, :long)
    end
end
