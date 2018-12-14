Product.destroy_all
Review.destroy_all

50.times do |index|
  name =
  Product.create(name: Faker::Food.fruits,
    cost: (10 * (rand(200).to_f / 100).round(2)), country_origin: "USA")
end

5.times do |index|
  products = Product.all
  products.each do |product|
    Review.create(author: Faker::Friends.character,
      content_body: Faker::Lorem.characters(200),
      rating: (rand(5)+1), product_id: product.id)
  end
end

p "Created #{Product.count} products"
p "Create #{Review.count} reviews"
