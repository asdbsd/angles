class GroupTourReservation < ApplicationRecord
  has_many :grouped_reservations, dependent: :destroy
  has_many :tour_reservations, through: :grouped_reservations

  after_save do |record|
    record.tour_reservations.each do |res|
      res.update(status: 1)
    end
  end


end


