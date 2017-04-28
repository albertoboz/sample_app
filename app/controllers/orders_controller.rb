class OrdersController < ApplicationController
  before_action :authenticate_user!

  def index
    @orders = Order.where("user_id =?", current_user.id).paginate(:page => params[:page], :per_page => 8)
  end

  def show
  end

  def new
  end

  def create
  end

  def Destroy
  end
end
