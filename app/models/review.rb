class Review < ActiveRecord::Base
  belongs_to :product

  validates :author, :content_body, :rating, :presence => true
  validates_associated :product
  validates :content_body, length: { minimum: 50, maximum: 250, wrong_length: "Must be between 50 to 250 characters." }
  validates :rading, numericality: { less_than_or_equal_to: 5, greater_than_or_equal_to: 1 }
end
