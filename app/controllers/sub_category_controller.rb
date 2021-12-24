class SubCategoryController < ApplicationController
    before_action :set_category

  def index
    @sub_category = @category.sub_categories
  end

  def new
    @sub_category = @category.sub_categories.build
  end

  def show
    @sub_category = @category.sub_categories.find(params[:id])
  end

  def create
    @sub_category = @category.sub_categories.build(sub_category_params)

    if @sub_category.save
      redirect_to category_items_path
    else
      render action: 'new'
    end
  end

private
  def set_category
    @category = Category.find(params[:category_id])
  end

  def sub_category_params
    params.require(:sub_category).permit(:name, :category_id)
  end 
end
