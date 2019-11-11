class Api::ItemsController < ApplicationController 
  def index
    #binding.pry
    @items = Item.where(shelf_id: params[:shelf_id]) 
    render json: @items 
  end

  def show 
    #binding.pry
    @item = Item.find(params[:id])
    render json: @item
  end
end