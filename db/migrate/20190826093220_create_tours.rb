class CreateTours < ActiveRecord::Migration[6.0]
  def change
    create_table :tours do |t|
      t.string :name
      t.text :description
      t.decimal :ad_price, precision: 8, scale: 2
      t.decimal :add_ad_price, precision: 8, scale: 2
      t.decimal :ch_price, precision: 8, scale: 2
      t.decimal :add_ch_price, precision: 8, scale: 2
      t.decimal :add_chg, precision: 8, scale: 2

      t.timestamps
    end
  end
end
