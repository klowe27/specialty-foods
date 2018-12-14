Product.destroy_all
Review.destroy_all

10.times do |index|
  countries = ["USA", "China", "Canada", "France", "Mexico"]
  countries.each do |country|
    Product.create(name: Faker::Food.fruits,
      cost: (10 * (rand(200).to_f / 100).round(2)), country_origin: country)
  end
end

5.times do |index|
  products = Product.all
  products.each do |product|
    Review.create(author: Faker::Friends.character,
      content_body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam efficitur, erat non dictum aliquet, lacus diam hendrerit eros, at dictum enim tellus in elit. Cras a luctus ex, ultricies ullamcorper justo.",
      rating: (rand(5)+1), product_id: product.id)
  end
end

p "Created #{Product.count} products"
p "Created #{Review.count} reviews"
