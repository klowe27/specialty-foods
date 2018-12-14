class Product < ActiveRecord::Base
  has_many :reviews

  scope :usa_made, -> { where(country_origin: "USA")}

  scope :three_most_recent, -> { order(created_at: :desc).limit(3)}

  scope :most_reviews, -> {(
    select("products.id, products.name, products.cost,
    products.country_origin, count(reviews.id) as reviews_count")
    .joins(:reviews)
    .group("products.id")
    .order("reviews_count DESC")
    .limit(8)
    )}
    
  validates :name, :cost, :country_origin, :presence => true
end
