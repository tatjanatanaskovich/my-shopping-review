class ItemsController < ApplicationController
  
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
    @item = Item.find(params[:id])
  end
  
  def edit
    @item = Item.find(params[:id])
  end
  
  def update
    @item = Item.find(params[:id])
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
    @item = Item.find(params[:id])
    @item.destroy
    flash[:notice] = "Item was successfully deleted!"
    redirect_to items_path
  end
  
  private
  
  def item_params
    params.require(:item).permit(:name, :price, :date)
  end
  
end