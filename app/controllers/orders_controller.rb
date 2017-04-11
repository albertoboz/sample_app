class OrdersController < ApplicationController
  before_filter :authenticate_user!

  def index
  end

  def show
  end

  def new
  end

  def Destroy
  end

  def create
    @order = Order.new(product_id, user_id, total)

    respond_to do |format|
      if @order.save
        format.html { redirect_to orders_url, notice: 'Order was successfully created.' }
        format.json { render :show, status: :created, location: @order }
      else
        format.html { render :new }
        format.json { render json: @order.errors, status: :unprocessable_entity }
      end
    end
  end
end
