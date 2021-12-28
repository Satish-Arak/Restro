class OrdersController < ApplicationController
  def index
    @orders = Order.all
  end

  def show
    @order = Order.find(params[:id])
  end

  def new
    @order = Order.new
  end

  def create
    @order = Order.new(order_params)
    @items = @order.items.build
    if @order.save
      redirect_to order_path
    else
      render action: 'new'
    end
  end

  private
  def order_params
    params.require(:order).permit(:name, :email, :address, item_ids:[])
  end

end
