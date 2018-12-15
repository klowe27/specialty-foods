require 'rails_helper'

describe "the delete a product process" do
  it "deletes a product" do
    @product = Product.create({name: "Test", country_origin: "USA", cost: 10})
    visit product_path(@product)
    click_link 'Delete product'
    expect(page).to have_content 'All Products'
  end
end
