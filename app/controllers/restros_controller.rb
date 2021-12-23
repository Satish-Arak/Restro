class RestrosController < ApplicationController
  def index
    @restros = Restro.all
  end

  def new
    @restro = Restro.new
  end

  def create
    @restro = Restro.create(restro_params)
    if
      @restro.save
      redirect_to restros_path
    else
      render action = 'new'
    end
  end

  def show
  end

  private
  def restro_params
    params.require(:restro).permit(:name)
  end

end
