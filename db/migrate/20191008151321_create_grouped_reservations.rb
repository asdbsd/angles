class CreateGroupedReservations < ActiveRecord::Migration[6.0]
  def change
    create_table :grouped_reservations do |t|
      t.references :group_tour_reservation, null: false, foreign_key: true
      t.references :tour_reservation, null: false, foreign_key: true, index: { unique: true }

      t.timestamps
    end
  end
end
