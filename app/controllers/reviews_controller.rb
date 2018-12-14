class ProductsController < ApplicationController
  def index
    @reviews = Product.all
    render :index
  end
end
