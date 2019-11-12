class Api::CartsController < ApplicationController 

  def index
  end

  def show 
   @cart = Cart.find(params[:id])
   render json: @cart
  end
end