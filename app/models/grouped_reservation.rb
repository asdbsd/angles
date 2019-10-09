class GroupedReservation < ApplicationRecord
  validates_uniqueness_of :tour_reservation_id

  belongs_to :group_tour_reservation
  belongs_to :tour_reservation
end
