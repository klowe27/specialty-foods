class Review < ActiveRecord::Base
  belongs_to :product

  validates :author, :presence => true
  validates :content_body, :presence => true
  validates :content_body, length: { minimum: 50, maximum: 250, wrong_length: "Must be between 50 to 250 characters." }

  validates :rating, numericality: { greater_than: 0, less_than: 6, message: "Must be a number between 1-5." }

end
