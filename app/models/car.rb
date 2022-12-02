class Car < ApplicationRecord
  belongs_to :user
  has_many :bookings
  has_many_attached :photos
  # holi
  # validates that the car model is not empy
  validates :model, :daily_price, :year, :brand, :kms, :plate, :color, :capacity, :load, :transmission, :technical_approval, :insurance, :performance, presence: true
end
