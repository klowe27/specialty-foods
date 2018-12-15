require 'rails_helper'

describe "the update a product process" do
  it "updates a product" do
    @product = Product.create({name: "Test", country_origin: "USA", cost: 10})
    visit product_path(@product)
    click_link 'Edit product'
    fill_in 'Name', :with => 'Sue Barry'
    fill_in 'Country origin', :with => "USA"
    fill_in 'Cost', :with => 10
    click_on 'Update Product'
    expect(page).to have_content 'Sue Barry'
  end
end
