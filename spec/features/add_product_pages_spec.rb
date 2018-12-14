require 'rails_helper'

describe "the add a product process" do
  it "adds a new product" do
    visit products_path
    click_link 'Add product'
    fill_in 'Name', :with => 'Sue Barry'
    fill_in 'Country origin', :with => "USA"
    fill_in 'Cost', :with => 10
    click_on 'Create Product'
    expect(page).to have_content 'Sue Barry'
  end

  it "gives error when no name, country or cost are entered" do
    visit new_product_path
    click_on 'Create Product'
    expect(page).to have_content 'errors'
  end
end
