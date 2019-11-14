class Api::CartsController < ApplicationController 

  def index
    binding.pry
  end

  def show 
   @cart = Cart.find(params[:id])
   render json: @cart
  end

  def create 
    short_params = params[:item][:item]
    buyer = User.find(1)
    seller = User.find(short_params[:shelf_id])
    item = Item.find(short_params[:id])
    buyer.cart.items << item 
    seller.shelf.items.delete(item) 
  end
end