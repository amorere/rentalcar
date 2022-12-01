class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :car
  # validate that the booking is not in the past
  validate :start_date_cannot_be_in_the_past
  # validate that the booking end date is before the start date
  validate :end_date_cannot_be_before_start_date
  #validate that the booking is not overlapping with another booking
  validate :booking_overlapping
  #validate that pick up and drop off points are not empty
  validates :pick_point, presence: true
  validates :drop_point, presence: true

end
