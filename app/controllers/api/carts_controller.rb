class Api::CartsController < ApplicationController 

  def index
    binding.pry
  end

  def show 
   @cart = Cart.find(params[:id])
   render json: @cart
  end
end