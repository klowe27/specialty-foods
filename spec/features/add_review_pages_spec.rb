require 'rails_helper'

describe "the add a review process" do
  it "adds a review" do
    @product = Product.create({name: "Test", country_origin: "USA", cost: 10})
    visit product_path(@product)
    click_link 'Add a review'
    fill_in 'Author', :with => 'Molly Murray'
    fill_in 'Content body', :with => "This is a review, and it's a really good one. No doubt about it."
    fill_in 'Rating', :with => 4
    click_on 'Create Review'
    expect(page).to have_content 'Molly Murray'
  end

  it "gives an error when no name, content or rating are entered" do
    @product = Product.create({name: "Test", country_origin: "USA", cost: 10})
    visit product_path(@product)
    click_link 'Add a review'
    click_on 'Create Review'
    expect(page).to have_content 'errors'
  end

  it "gives an error a rating is not a number 1-5" do
    @product = Product.create({name: "Test", country_origin: "USA", cost: 10})
    visit product_path(@product)
    click_link 'Add a review'
    fill_in 'Author', :with => 'Molly Murray'
    fill_in 'Content body', :with => "This is a review, and it's a really good one. No doubt about it."
    fill_in 'Rating', :with => 6
    click_on 'Create Review'
    expect(page).to have_content 'Rating must be less than or equal to 5'
  end

  it "gives an error if the body content is less than 50 characters or more than 250" do
    @product = Product.create({name: "Test", country_origin: "USA", cost: 10})
    visit product_path(@product)
    click_link 'Add a review'
    fill_in 'Author', :with => 'Molly Murray'
    fill_in 'Content body', :with => "This is a review."
    fill_in 'Rating', :with => 5
    click_on 'Create Review'
    expect(page).to have_content 'Content body is too short (minimum is 50 characters)'
  end


end
