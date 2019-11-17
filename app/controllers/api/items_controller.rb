class Api::ItemsController < ApplicationController 
  def index
    if params[:shelf_id]
      @shelf = Shelf.find(params[:shelf_id])
      render json: @shelf.items 
    elsif params[:cart_id] 
      @cart = Cart.find(params[:cart_id])
      render json: @cart.items 
    end
  end

  def show 
    binding.pry
    @item = Item.find(params[:id])
    render json: @item
  end

  def create
    renter_id = User.find(1)
    @item = Item.find(params[:cart][:item][:id]) 

    @item.cart_id = params[:cart_id]
    @item.start_date = params[:cart][:startDate]
    @item.end_date = params[:cart][:endDate]
    @item.rented = true 
    @item.save 
    render json: @item
  end

  def destroy 
    renter = User.find(1)
    @item = Item.find(params[:id])

    @item.cart_id = @item.shelf_id
    @item.start_date = ''
    @item.end_date = ''
    @item.rented  = false 
    @item.save 

    render json: @item
  end
end