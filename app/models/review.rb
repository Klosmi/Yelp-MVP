class Review < ApplicationRecord
  belongs_to :restaurant
  validates :content, presence: true
  validates :rating, presence: true
  # rating should be an integer
  # rating should be a number between 0 and 5
  validates :rating ,numericality: { only_integer: true }, :inclusion => 0..5, presence: true
end
