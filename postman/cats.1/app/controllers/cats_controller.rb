class CatsController < ApplicationController
    def index
        @cats = Cat.all
        render json: @cats
        # get /cats
    end
    
    def create
        @cat = Cat.create(cat_params)
        render json: @cat
        # post /cats
    end
    
    def update
        @cat = Cat.find(params[:id])
        @cat.update(cat_params)
        render json: @cat
        # put /cats/id
    end
    
    def destroy
        @cat = Cat.find(params[:id])
        @cat.destroy
        render json: Cat.all
        # delete /cats/id
    end
    
    def show
        #to_json method to see sightings tied to animal
        @cat = Cat.find(params[:id])
        render json: @cat.to_json({:include => :sightings})
    end
    
    private
    
    def cat_params
	    params.require(:cat).permit(:name, :cat_type, :color, :rating)
    end
end
