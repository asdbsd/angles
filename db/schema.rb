# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2019_08_28_074621) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "tour_reservations", force: :cascade do |t|
    t.integer "tour_id"
    t.datetime "date"
    t.string "hotel"
    t.string "phone"
    t.string "voucher"
    t.integer "ad_sell_price"
    t.integer "add_ad_sale_price"
    t.integer "ch_sale_price"
    t.integer "add_ch_sale_price"
    t.integer "add_chg_sale_price"
    t.integer "pax_ad"
    t.integer "pax_ch"
    t.integer "pax_add_ad"
    t.integer "pax_add_ch"
    t.integer "pax_add_chg"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "tours", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.decimal "ad_price", precision: 8, scale: 2
    t.decimal "add_ad_price", precision: 8, scale: 2
    t.decimal "ch_price", precision: 8, scale: 2
    t.decimal "add_ch_price", precision: 8, scale: 2
    t.decimal "add_chg", precision: 8, scale: 2
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
