class CategoriesController < ApplicationController
  before_action :set_restro
  
  def index
    @categories = @restro.categories
  end

  def new
    @category = @restro.categories.build
  end
  
  def create
    # render plain: params[:category].inspect
    @category = @restro.categories.build(category_params)

    if @category.save
      redirect_to restro_path(@restro)
    else
      render action: 'new'
    end
  end 
  
  
  def show
    @category = @restro.categories.find(params[:id])
  end

  def edit
    @category = @restro.categories.find(params[:id])
  end

  # def update
  #   if @category.update(category_params)
  #     redirect_to [@category.restro, @category]
  #   else
  #     render action: 'edit'
  #   end
  # end

  # def destroy
  #   @category.destroy

  #   redirect_to restro_categories_url(@restro)
  # end
  
  private
  def set_restro
    @restro = Restro.find(params[:restro_id])
  end

  # def set_category
  #     @category = @restro.categories.find(params[:id])
  # end

  def category_params
    params.require(:category).permit(:name, :restro_id)
  end         
end
# @category = Category.new(category_params)
# if @category.save
#     redirect_to category_path
# else
#     render 'new'
# end