class AddGroupTourRservationRefToTourReservations < ActiveRecord::Migration[6.0]
  def change
    add_reference :tour_reservations, :group_tour_reservation, null: false, foreign_key: true
  end
end
