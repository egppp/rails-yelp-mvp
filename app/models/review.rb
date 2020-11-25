class Review < ApplicationRecord
  belongs_to :restaurant
  validates :content, :rating, presence: true
  validates :rating, numericality: { only_integer: true }, inclusion: { in: 0..5, message: 'Rating should be between 0 to 5' }
end
