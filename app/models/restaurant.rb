class Restaurant < ApplicationRecord
   # When a restaurant is destroyed, all of its reviews must be destroyed as well.
  has_many :reviews, dependent: :destroy
  validates :category, inclusion: { in: %w(chinese italian japanese french belgian)}
  validates :name, :address, :phone_number, presence: true
  validates :address, presence: true
  validates :phone_number, presence: true
end
