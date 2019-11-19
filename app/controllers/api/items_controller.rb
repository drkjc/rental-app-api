class Api::ItemsController < ApplicationController 
  def index
    if params[:shelf_id]
      @shelf = Shelf.find(params[:shelf_id])
      render json: @shelf.items 
    elsif params[:cart_id] 
      @cart = Cart.find(params[:cart_id])
      #binding.pry
      render json: @cart.items 
    end
  end

  def show 
    @item = Item.find(params[:id])
    render json: @item
  end

  def create
    # renter_id = User.find(1)
    if params[:cart_id]
      @item = Item.find(params[:cart][:item][:id]) 

      @item.cart_id = params[:cart_id]
      @item.start_date = params[:cart][:startDate]
      @item.end_date = params[:cart][:endDate]
      @item.rented = true 
      @item.save 
      render json: @item
    elsif params[:shelf_id]
      @item = Item.new(item_params)
      @item.cart_id = params[:shelf_id]
      @item.shelf_id = params[:shelf_id]
      @item.rented = false 
      @item.save 
      render json: @item
    end
  end

  def update
    @item = Item.find(params[:item][:id])
    @item.name = params[:item][:name]
    @item.price = params[:item][:price]
    @item.category = params[:item][:category]
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

  private 

  def item_params
    params.require(:item).permit(:name, :category, :price)
  end
end