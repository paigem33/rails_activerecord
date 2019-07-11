class AnimalsController < ApplicationController
    def index
        @animals = Animal.all
        render json: @animals
        # get /animals
    end
    def create
        @animal = Animal.create(animal_params)
        render json: @animal
        # post /animals
    end
    def update
        @animal = Animal.find(params[:id])
        @animal.update(animal_params)
        render json: @animal
        # /animals/id
    end
    def destroy
        @animal = Animals.find(params[:id])
        @animal.destroy
        render json: Animal.all
        # delete /animals/id
    end
    def show
        #to_json method to see sightings tied to animal
        @animal = Animal.find(params[:id])
        render json: @animal.to_json({:include => :sightings})
    end
    private
    def animal_params
	    params.require(:animal).permit(:name, :latin_name, :kingdom)
    end
end
