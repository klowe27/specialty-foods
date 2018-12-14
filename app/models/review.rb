class Review < ActiveRecord::Base
  belongs_to :product

  validates :author, :presence => true
  validates :content_body, :presence => true
  validates :content_body, length: { minimum: 50, maximum: 250, wrong_length: "Must be between 50 to 250 characters." }
  validates :rating, :presence => true
  validates :rating, numericality: { integer: true}
  validates :rating, numericality: { greater_than: 0}
  validates :rating, numericality: {less_than: 6}

end
