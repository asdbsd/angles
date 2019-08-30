class CreateTourReservations < ActiveRecord::Migration[6.0]
  def change
    create_table :tour_reservations do |t|
      t.datetime :date
      t.string :hotel
      t.string :phone
      t.string :voucher
      t.string :agent
      t.string :guide
      t.time :p_up_time
      t.decimal :ad_sale_price, precision: 8, scale: 2
      t.decimal :add_ad_sale_price, precision: 8, scale: 2
      t.decimal :ch_sale_price, precision: 8, scale: 2
      t.decimal :add_ch_sale_price, precision: 8, scale: 2
      t.decimal :add_chg_sale_price, precision: 8, scale: 2
      t.integer :pax_ad, limit: 2
      t.integer :pax_ch, limit: 2
      t.integer :pax_add_ad, limit: 2
      t.integer :pax_add_ch, limit: 2
      t.integer :pax_add_chg, limit: 2
      t.references :tour

      t.timestamps
    end
  end
end
