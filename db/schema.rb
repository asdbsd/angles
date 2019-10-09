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

ActiveRecord::Schema.define(version: 2019_10_08_151321) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "group_tour_reservations", force: :cascade do |t|
    t.string "name"
    t.datetime "date"
    t.string "guide"
    t.decimal "guide_pay", precision: 8, scale: 2
    t.string "vehicle"
    t.decimal "vehicle_pay", precision: 8, scale: 2
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "grouped_reservations", force: :cascade do |t|
    t.bigint "group_tour_reservation_id", null: false
    t.bigint "tour_reservation_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["group_tour_reservation_id"], name: "index_grouped_reservations_on_group_tour_reservation_id"
    t.index ["tour_reservation_id"], name: "index_grouped_reservations_on_tour_reservation_id", unique: true
  end

  create_table "tour_reservations", force: :cascade do |t|
    t.datetime "date"
    t.string "hotel"
    t.string "phone"
    t.string "voucher"
    t.string "agent"
    t.string "guide"
    t.time "p_up_time"
    t.decimal "ad_sale_price", precision: 8, scale: 2
    t.decimal "add_ad_sale_price", precision: 8, scale: 2
    t.decimal "ch_sale_price", precision: 8, scale: 2
    t.decimal "add_ch_sale_price", precision: 8, scale: 2
    t.decimal "add_chg_sale_price", precision: 8, scale: 2
    t.integer "pax_ad", limit: 2
    t.integer "pax_ch", limit: 2
    t.integer "pax_add_ad", limit: 2
    t.integer "pax_add_ch", limit: 2
    t.integer "pax_add_chg", limit: 2
    t.bigint "tour_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["tour_id"], name: "index_tour_reservations_on_tour_id"
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

  add_foreign_key "grouped_reservations", "group_tour_reservations"
  add_foreign_key "grouped_reservations", "tour_reservations"
end
