class Review < ApplicationRecord
  belongs_to :restaurant
  RATING = (0..5)
  validates :rating, inclusion: { in: RATING }, presence: true, numericality: { only_integer: true }
  validates :content, presence: true
end
