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
    binding.pry
    if params[:cart_id]
      @item = Item.find(params[:item][:item][:id])

      @item.cart_id = params[:cart_id]
      @item.start_date = params[:item][:start]
      @item.end_date = params[:item][:end]
      @item.rented = true
      @item.save
      render json: @item
    elsif params[:shelf_id]
      @shelf = Shelf.find(params[:shelf_id])
      @item = Item.new(item_params)
      @item.cart_id = params[:shelf_id]
      @item.shelf_id = params[:shelf_id]
      @item.rented = false
      @item.save
      @shelf.items << @item
      render json: @shelf.items
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
    if params['from']['shelf']
      @shelf = Shelf.find(params[:shelf_id])
      @item = Item.find(params[:id])

      @shelf.items.destroy(@item)
      @shelf.save
      render json: @item
    end
    if params['from']['cart']
      @cart = Cart.find(params[:cart_id])
      @item = Item.find(params[:id])

      @item.cart_id = @item.shelf_id
      @item.start_date = ''
      @item.end_date = ''
      @item.rented  = false
      @item.save
      render json: @cart.items
    end
  end

  private

  def item_params
    params.require(:item).permit(:name, :category, :price)
  end
end