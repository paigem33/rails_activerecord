class AnimalsController < ApplicationController
    def index
        @animalAll = Animal.all
        # @animal = Animal.create(animal_params)
        render json: @animalAll
    end
    def create
        @animal = Animal.create(animal_params)
        # render :animals
    end
    # def update
    #     @animal_id = Animal.id
    #     @animalUpdate = Animal.find(@animal_id).update(animal_params)
    # end
    def animal_params
	    params.require(:animal).permit(:name, :latin_name, :kingdom)
    end
end
