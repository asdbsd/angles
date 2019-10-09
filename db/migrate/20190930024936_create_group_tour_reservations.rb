class CreateGroupTourReservations < ActiveRecord::Migration[6.0]
  def change
    create_table :group_tour_reservations do |t|
      t.string :name
      t.datetime :date
      t.string :guide
      t.decimal :guide_pay, precision: 8, scale: 2
      t.string :vehicle
      t.decimal :vehicle_pay, precision: 8, scale: 2

      t.timestamps
    end
  end
end
