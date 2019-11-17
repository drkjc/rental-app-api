class Api::CartsController < ApplicationController 

  def index
    binding.pry
  end

  def show 
  #  @cart = Cart.find(params[:id])
  #  render json: @cart
  end

  def create
    # binding.pry
    # #get params 
    # _params = params[:item][:item]
    # # get buyer and seller
    # buyer = User.find(1)
    # seller = User.find(_params[:shelf_id])
    # # get item, add start & end date, rental bool, and ids
    # item = Item.find(_params[:id])
    # item.start_date = params[:item][:startDate]
    # item.end_date = params[:item][:endDate]
    # item.rented = true
    # item.shelf_id = seller.id
    # item.cart_id = buyer.id
  
    # item.save

    # render json: item
  end

  def destroy 
    # #binding.pry
    # _params = params[:item][:items]

    # #_params.where(id: )
    # buyer = User.find(1)
    # seller = User.find(_params[:shelf_id])
    # item = _params.map{ |item| item.id = params[:item][:id]}



    # item.shelf_id = seller.id 
    # item.cart_id = seller.id 
    # item.start_date = ''
    # item.end_date = ''
    # item.rented = false
    # item.save

    # render json: item
  end

end