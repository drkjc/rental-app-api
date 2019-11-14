class Api::CartsController < ApplicationController 

  def index
    binding.pry
  end

  def show 
   @cart = Cart.find(params[:id])
   render json: @cart
  end

  def create
    binding.pry
    # get params 
    # _params = params[:item][:item]
    # # get buyer and seller
    # buyer = User.find(1)
    # seller = User.find(_params[:shelf_id])
    # # get item and add start & end date
    # item = Item.find(_params[:id])
    # item.start_date = params[:item][:startDate]
    # item.end_date = params[:item][:endDate]
    # item.rented = true
    # item.save
    # # add item to cart
    # buyer.cart.items << item 
    # # remove item from shelf
    # seller.shelf.items.delete(item) 

    redirect_to root_path
  end
end