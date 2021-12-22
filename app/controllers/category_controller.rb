class CategoryController < ApplicationController
  def index
    @category = Category.all
  end

  def create
    @category = Category.new(category_params)
    if @category.save
      redirect_to category_path
    else
      render 'new'
    end
  end

  def new
    @category = Category.new
  end

  def show
  end

private
  def category_params
    params.require(:article).permit(:name, :restro_id)
  end         
end
