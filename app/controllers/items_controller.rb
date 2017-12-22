class ItemsController < ApplicationController
  before_action :set_item, only: [:edit, :update, :show, :destroy]
  
  def new
    @item = Item.new
  end
  
  def create 
    @item = Item.new(item_params)
    if @item.save
      flash[:notice] = "Item was successfully created!"
    redirect_to item_path(@item)
    else
      render 'new'
    end
  end
  
  def show
    #@item = Item.find(params[:id]) ovo vise ne treba sada je set_item
  end
  
  def edit
    #@item = Item.find(params[:id]) ovo vise ne treba sada je set_item
  end
  
  def update
    #@item = Item.find(params[:id]) ovo vise ne treba sada je set_item
    if @item.update(item_params)
      flash[:notice] = "Item was successfully updated!"
      redirect_to item_path(@item)
    else
      render 'edit'
    end
  end
  
  def index
    @items = Item.all
  end
  
  def destroy
    #@item = Item.find(params[:id]) ovo vise ne treba sada je set_item
    @item.destroy
    flash[:notice] = "Item was successfully deleted!"
    redirect_to items_path
  end
  
  private
  
  def set_item
    @item = Item.find(params[:id])
  end
  
  def item_params
    params.require(:item).permit(:name, :price, :date)
  end
  
end