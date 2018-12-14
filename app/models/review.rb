class Review < ActiveRecord::Base
  belongs_to :product

  validates :author, :presence => true
  validates :content_body, :presence => true
  validates :content_body, length: { within: 50..250 }
  validates :rating, :presence => true, numericality: { integer: true, less_than: 6,  greater_than: 0, message: "must be a number between 1 and 5."}

end
