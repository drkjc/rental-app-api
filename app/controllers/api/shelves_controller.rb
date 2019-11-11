class Api::ShelvesController < ApplicationController 

  def index
    #binding.pry
    @shelves = Shelf.all 
    render json: @shelves
  end

  def show 
   @shelf = Shelf.find(params[:id])
   render json: @shelf
  end
end