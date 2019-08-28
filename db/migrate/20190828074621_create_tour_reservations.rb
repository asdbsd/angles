class CreateTourReservations < ActiveRecord::Migration[6.0]
  def change
    create_table :tour_reservations do |t|
      t.integer :tour_id
      t.datetime :date
      t.string :hotel
      t.string :phone
      t.string :voucher
      t.integer :ad_sell_price, precission: 8, scale: 2
      t.integer :add_ad_sale_price, precission: 8, scale: 2
      t.integer :ch_sale_price, precission: 8, scale: 2
      t.integer :add_ch_sale_price, precission: 8, scale: 2
      t.integer :add_chg_sale_price, precission: 8, scale: 2
      t.integer :pax_ad, precission: 3, scale: 0
      t.integer :pax_ch, precission: 3, scale: 0
      t.integer :pax_add_ad, precission: 3, scale: 0
      t.integer :pax_add_ch, precission: 3, scale: 0
      t.integer :pax_add_chg, precission: 3, scale: 0

      t.timestamps
    end
  end
end
