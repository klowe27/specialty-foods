class MainController < ApplicationController
  def index
    @usa_made_products = Product.usa_made
    @most_recent_products = Product.three_most_recent

    render :index
  end
end
