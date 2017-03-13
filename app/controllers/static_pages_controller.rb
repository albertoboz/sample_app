class StaticPagesController < ApplicationController
  def index
  end

  def landing_page
    @products = Product.limit(4)
  end

  def thank_you
    @name = params[:name]
    @email = params[:email]
    @message = params[:message]
    contact_form(@email, @name, @message)
  end
end
