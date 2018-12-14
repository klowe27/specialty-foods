class Product < ActiveRecord::Base
  has_many :reviews

  scope :usa_made, -> { where(country_origin: "USA")}

  scope :three_most_recent, -> { product(created_at: :desc).limit(3)}

  validates :name, :cost, :country_origin, :presence => true
end
