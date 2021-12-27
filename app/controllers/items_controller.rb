class ItemsController < ApplicationController
  before_action :set_category

  def index
    @item = @category.items
  end

  def new
    @item = @category.items.build
  end

  def show
    @item = @category.items.find(params[:id])
  end

  def create
    @item = @category.items.build(item_params)

    if @item.save
      redirect_to category_items_path(@category)
    else
      render action: 'new'
    end
  end

private
  def set_category
    @category = Category.find(params[:category_id])
  end

  def item_params
    params.require(:item).permit(:name, :category_id)
  end 
end
