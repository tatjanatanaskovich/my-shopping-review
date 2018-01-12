class CategoriesController < ApplicationController
  before_action :set_category, only: [:edit, :update, :show, :destroy]
  
  def new
    @category = Category.new
  end
  
  def create 
    @category = Category.new(category_params)
    if @category.save
      flash[:notice] = "Category was successfully created!"
    redirect_to category_path(@category)
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
    if @category.update(category_params)
      flash[:notice] = "Category was successfully updated!"
      redirect_to category_path(@category)
    else
      render 'edit'
    end
  end
  
  def index
    @category = Category.all
  end
  
  def destroy
    #@item = Item.find(params[:id]) ovo vise ne treba sada je set_item
    @category.destroy
    flash[:notice] = "Category was successfully deleted!"
    redirect_to category_path(@category)
  end
  
  private
  
  def set_category
    @category = Category.find(params[:id])
  end
  
  def category_params
    params.require(:category).permit(:name)
  end
  
end