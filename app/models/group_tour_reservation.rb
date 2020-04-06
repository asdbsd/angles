class GroupTourReservation < ApplicationRecord
  has_many :tour_reservations
  accepts_nested_attributes_for :tour_reservations
  attr_accessor :selected_date
end
