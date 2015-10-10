class HomeController < ApplicationController
  def index
    if params[:tag]
      tag = params[:tag]
      @products = Product.tagged_with(tag)
    else  
      @products = Product.order(created_at: :desc)
    end  
  end
end
