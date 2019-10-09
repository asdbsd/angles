class GroupTourReservation < ApplicationRecord
  has_many :grouped_reservations
  has_many :tour_reservations, through: :grouped_reservations
end
