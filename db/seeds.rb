# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
#

tours = Tour.create(
[
  { name: 'River Kwai', ad_price: 2000.00, add_ad_price: 0.00, ch_price: 1100.00, add_ch_price: 0.00, add_chg: 300.00, description: "" },
  { name: 'BKK CLSK', ad_price: 2100.00, add_ad_price: 0.00, ch_price: 1050.00, add_ch_price: 0.00, add_chg: 0.00, description: "" },
  { name: 'BKK CLSK + OW + SN', ad_price: 3500.00, add_ad_price: 0.00, ch_price: 1750.00, add_ch_price: 0.00, add_chg: 0.00, description: "" },
  { name: 'BKK CLSK + SN', ad_price: 3200.00, add_ad_price: 0.00, ch_price: 1600.00, add_ch_price: 0.00, add_chg: 0.00, description: "" },
  { name: 'BKK CLSK + OW', ad_price: 2500.00, add_ad_price: 0.00, ch_price: 1250.00, add_ch_price: 0.00, add_chg: 0.00, description: "" },
  { name: 'BKK COINS', ad_price: 1800.00, add_ad_price: 0.00, ch_price: 900.00, add_ch_price: 0.00, add_chg: 0.00, description: "" },
  { name: 'BKK COINS + SN', ad_price: 2700.00, add_ad_price: 0.00, ch_price: 1350.00, add_ch_price: 0.00, add_chg: 0.00, description: "" },
  { name: 'Khao Kheow', ad_price: 450.00, add_ad_price: 0.00, ch_price: 300.00, add_ch_price: 0.00, add_chg: 0.00, description: "" },
  { name: 'ATV + Beach', ad_price: 1700.00, add_ad_price: 1200.00, ch_price: 0.00, add_ch_price: 0.00, add_chg: 0.00, description: "" },
  { name: 'ATV Afternoon', ad_price: 1600.00, add_ad_price: 1100.00, ch_price: 0.00, add_ch_price: 0.00, add_chg: 0.00, description: "" },
  { name: 'Lost World', ad_price: 2000.00, add_ad_price: 0.00, ch_price: 1000.00, add_ch_price: 0.00, add_chg: 0.00, description: "" },
  { name: 'Dream World', ad_price: 700.00, add_ad_price: 0.00, ch_price: 600.00, add_ch_price: 0.00, add_chg: 0.00, description: "" },
  { name: 'Madagaskar', ad_price: 1100.00, add_ad_price: 0.00, ch_price: 700.00, add_ch_price: 0.00, add_chg: 0.00, description: "" },
  { name: 'Wat Yan + Long Neck', ad_price: 500.00, add_ad_price: 0.00, ch_price: 300.00, add_ch_price: 0.00, add_chg: 0.00, description: "" },
  { name: 'Mini Siam', ad_price: 400.00, add_ad_price: 0.00, ch_price: 200.00, add_ch_price: 0.00, add_chg: 0.00, description: "" },
  { name: 'Underwater World', ad_price: 350.00, add_ad_price: 0.00, ch_price: 250.00, add_ch_price: 0.00, add_chg: 0.00, description: "" },
  { name: 'Ayutthaya', ad_price: 1900.00, add_ad_price: 0.00, ch_price: 900.00, add_ch_price: 0.00, add_chg: 0.00, description: "" },
  { name: 'Alcazar VIP Ticket', ad_price: 400.00, add_ad_price: 0.00, ch_price: 0.00, add_ch_price: 0.00, add_chg: 0.00, description: "" },
  { name: 'Alcazar VIP', ad_price: 400.00, add_ad_price: 0.00, ch_price: 0.00, add_ch_price: 0.00, add_chg: 0.00, description: "" },
  { name: 'Colosseum VIP', ad_price: 450.00, add_ad_price: 0.00, ch_price: 0.00, add_ch_price: 0.00, add_chg: 0.00, description: "" },
  { name: 'Colosseum VIP Ticket', ad_price: 350.00, add_ad_price: 0.00, ch_price: 0.00, add_ch_price: 0.00, add_chg: 0.00, description: "" },
  { name: 'Military Beach Mim', ad_price: 250.00, add_ad_price: 0.00, ch_price: 150.00, add_ch_price: 0.00, add_chg: 0.00, description: "" },
  { name: 'Military Beach 7C', ad_price: 300.00, add_ad_price: 0.00, ch_price: 200.00, add_ch_price: 0.00, add_chg: 0.00, description: "" },
  { name: 'Sattahip Mim', ad_price: 300.00, add_ad_price: 0.00, ch_price: 200.00, add_ch_price: 0.00, add_chg: 0.00, description: "" },
  { name: 'Sattahip 7C', ad_price: 400.00, add_ad_price: 0.00, ch_price: 200.00, add_ch_price: 0.00, add_chg: 0.00, description: "" },
  { name: 'Khao Yai + Elephant Trecking', ad_price: 2800.00, add_ad_price: 0.00, ch_price: 1600.00, add_ch_price: 0.00, add_chg: 0.00, description: "" },
  { name: 'Khao Yai', ad_price: 2400.00, add_ad_price: 0.00, ch_price: 1200.00, add_ch_price: 0.00, add_chg: 0.00, description: "" },
  { name: 'Emerald Island', ad_price: 1250.00, add_ad_price: 0.00, ch_price: 700.00, add_ch_price: 0.00, add_chg: 0.00, description: "" },
  { name: 'Dolphin Show', ad_price: 600.00, add_ad_price: 0.00, ch_price: 450.00, add_ch_price: 0.00, add_chg: 0.00, description: "" },
  { name: 'Samet VIP 1 Day', ad_price: 850.00, add_ad_price: 0.00, ch_price: 400.00, add_ch_price: 0.00, add_chg: 0.00, description: "" },
  { name: 'Samet VIP 2 Days', ad_price: 2200.00, add_ad_price: 0.00, ch_price: 1100.00, add_ch_price: 0.00, add_chg: 0.00, description: "" },
  { name: 'Samet 2 Days', ad_price: 1400.00, add_ad_price: 0.00, ch_price: 700.00, add_ch_price: 0.00, add_chg: 0.00, description: "" },
  { name: 'Diving', ad_price: 2400.00, add_ad_price: 0.00, ch_price: 800.00, add_ch_price: 0.00, add_chg: 0.00, description: "" },
  { name: 'Catamaran Ramayana', ad_price: 1600.00, add_ad_price: 0.00, ch_price: 800.00, add_ch_price: 0.00, add_chg: 0.00, description: "" },
  { name: 'Dolche Vita', ad_price: 1600.00, add_ad_price: 0.00, ch_price: 1000.00, add_ch_price: 0.00, add_chg: 0.00, description: "" },
  { name: 'Tarzan 20 Stations', ad_price: 700.00, add_ad_price: 0.00, ch_price: 700.00, add_ch_price: 0.00, add_chg: 0.00, description: "" },
  { name: 'Tarzan 15 Stations', ad_price: 600.00, add_ad_price: 0.00, ch_price: 600.00, add_ch_price: 0.00, add_chg: 0.00, description: "" },
  { name: 'Tarzan 25 Stations', ad_price: 800.00, add_ad_price: 0.00, ch_price: 800.00, add_ch_price: 0.00, add_chg: 0.00, description: "" },
  { name: 'Tarzan 30 Stations', ad_price: 1100.00, add_ad_price: 0.00, ch_price: 1100.00, add_ch_price: 0.00, add_chg: 0.00, description: "" }
])

puts "All tours created"


3.times do |res|
  TourReservation.create(
                        date: Date.today + 2,
                        hotel: res.even? ? 'PATTAYA PARK' : 'NATURAL PARK',
                        phone: '+66 809747445',
                        voucher: "TTG00000000#{res}",
                        agent: res.even? ? 'TTG' : 'CORUS',
                        guide: res.even? ? 'KONSTAN P' : 'KONSTAN A',
                        p_up_time: Time.now + res.hour,
                        tour_id: res + 1,
                        ad_sale_price: Tour.find(res+1).ad_price + 200,
                        add_ad_sale_price: Tour.find(res+1).ad_price + 200,
                        ch_sale_price: Tour.find(res+1).ch_price + 200,
                        add_ch_sale_price: Tour.find(res+1).add_ch_price + 200,
                        add_chg_sale_price: Tour.find(res+1).add_chg + 200,
                        pax_ad: res.even? ? 2 : 4,
                        pax_ch: res.even? ? 1 : 2,
                        pax_add_ad: 0,
                        pax_add_ch: 0,
                        pax_add_chg: 0,
                        )
end
puts "3 Tour Reservations Created"

5.times do |res|
  TourReservation.create(
                        date: Date.today + 5,
                        hotel: res.even? ? 'PATTAYA PARK' : 'NATURAL PARK',
                        phone: '+66 809747445',
                        voucher: "TTG00000000#{res}",
                        agent: res.even? ? 'TTG' : 'CORUS',
                        guide: res.even? ? 'KONSTAN P' : 'KONSTAN A',
                        p_up_time: Time.now + res.hour,
                        tour_id: res + 5,
                        ad_sale_price: Tour.find(res+5).ad_price + 200,
                        add_ad_sale_price: Tour.find(res+5).ad_price + 200,
                        ch_sale_price: Tour.find(res+5).ch_price + 200,
                        add_ch_sale_price: Tour.find(res+5).add_ch_price + 200,
                        add_chg_sale_price: Tour.find(res+5).add_chg + 200,
                        pax_ad: res.even? ? 2 : 4,
                        pax_ch: res.even? ? 1 : 2,
                        pax_add_ad: 0,
                        pax_add_ch: 0,
                        pax_add_chg: 0,
                        )
end
puts "5 Tour Reservations Created"

9.times do |res|
  TourReservation.create(
                        date: Date.today + 2,
                        hotel: res.even? ? 'PATTAYA PARK' : 'NATURAL PARK',
                        phone: '+66 809747445',
                        voucher: "TTG00000000#{res}",
                        agent: res.even? ? 'TTG' : 'CORUS',
                        guide: res.even? ? 'KONSTAN P' : 'KONSTAN A',
                        p_up_time: Time.now + res.hour,
                        tour_id: res + 2,
                        ad_sale_price: Tour.find(res+2).ad_price + 200,
                        add_ad_sale_price: Tour.find(res+2).ad_price + 200,
                        ch_sale_price: Tour.find(res+2).ch_price + 200,
                        add_ch_sale_price: Tour.find(res+2).add_ch_price + 200,
                        add_chg_sale_price: Tour.find(res+2).add_chg + 200,
                        pax_ad: res.even? ? 2 : 4,
                        pax_ch: res.even? ? 1 : 2,
                        pax_add_ad: 0,
                        pax_add_ch: 0,
                        pax_add_chg: 0,
                        )
end
puts "9 Tour Reservations Created"

4.times do |res|
  TourReservation.create(
                        date: Date.today + 4,
                        hotel: res.even? ? 'PATTAYA PARK' : 'NATURAL PARK',
                        phone: '+66 809747445',
                        voucher: "TTG00000000#{res}",
                        agent: res.even? ? 'TTG' : 'CORUS',
                        guide: res.even? ? 'KONSTAN P' : 'KONSTAN A',
                        p_up_time: Time.now + res.hour,
                        tour_id: res + 8,
                        ad_sale_price: Tour.find(res+8).ad_price + 200,
                        add_ad_sale_price: Tour.find(res+8).ad_price + 200,
                        ch_sale_price: Tour.find(res+8).ch_price + 200,
                        add_ch_sale_price: Tour.find(res+8).add_ch_price + 200,
                        add_chg_sale_price: Tour.find(res+8).add_chg + 200,
                        pax_ad: res.even? ? 2 : 4,
                        pax_ch: res.even? ? 1 : 2,
                        pax_add_ad: 0,
                        pax_add_ch: 0,
                        pax_add_chg: 0,
                        )
end

puts "4 Tour Reservations Created"

4.times do |res|
  TourReservation.create(
                        date: Date.today + 3,
                        hotel: res.even? ? 'PATTAYA PARK' : 'NATURAL PARK',
                        phone: '+66 809747445',
                        voucher: "TTG00000000#{res}",
                        agent: res.even? ? 'TTG' : 'CORUS',
                        guide: res.even? ? 'KONSTAN P' : 'KONSTAN A',
                        p_up_time: Time.now + res.hour,
                        tour_id: res + 6,
                        ad_sale_price: Tour.find(res+6).ad_price + 200,
                        add_ad_sale_price: Tour.find(res+6).ad_price + 200,
                        ch_sale_price: Tour.find(res+6).ch_price + 200,
                        add_ch_sale_price: Tour.find(res+6).add_ch_price + 200,
                        add_chg_sale_price: Tour.find(res+6).add_chg + 200,
                        pax_ad: res.even? ? 2 : 4,
                        pax_ch: res.even? ? 1 : 2,
                        pax_add_ad: 0,
                        pax_add_ch: 0,
                        pax_add_chg: 0,
                        )
end

puts "4 Tour Reservations Created"

  @index = 0
  @reservations2 = TourReservation.all.select { |res| res.date == Date.today + 2 }
  @gr2 = GroupTourReservation.new(
    name: "TEST#{@index}",
    date: Date.today + 2,
    guide: @index.even? ? 'ARTEMIEV' : "CHOCHO",
    guide_pay: @index.even? ? 600 : 1800,
    vehicle: @index.even? ? 'CAR' : 'VAN',
    vehicle_pay: @index.even? ? 1500 : 4200,
    )
  @gr2.tour_reservations << @reservations2
  @gr2.save

puts "1st Group R Created"

  @index = 1
  @reservations5 = TourReservation.all.select { |res| res.date == Date.today + 5 }
  @gr5 = GroupTourReservation.new(
    name: "TEST#{@index}",
    date: Date.today + 5,
    guide: @index.even? ? 'ARTEMIEV' : "CHOCHO",
    guide_pay: @index.even? ? 600 : 1800,
    vehicle: @index.even? ? 'CAR' : 'VAN',
    vehicle_pay: @index.even? ? 1500 : 4200
    )
  @gr5.tour_reservations << @reservations5
  @gr5.save

puts "2st Group R Created"

  @index = 2
  @reservations4 = TourReservation.all.select { |res| res.date == Date.today + 4 }
  @gr4 = GroupTourReservation.new(
    name: "TEST#{@index}",
    date: Date.today + 4,
    guide: @index.even? ? 'ARTEMIEV' : "CHOCHO",
    guide_pay: @index.even? ? 600 : 1800,
    vehicle: @index.even? ? 'CAR' : 'VAN',
    vehicle_pay: @index.even? ? 1500 : 4200
    )
  @gr4.tour_reservations << @reservations4
  @gr4.save

puts "3st Group R Created"

  @index = 3
  @reservations3 = TourReservation.all.select { |res| res.date == Date.today + 3 }
  @gr3 = GroupTourReservation.new(
    name: "TEST#{@index}",
    date: Date.today + 3,
    guide: @index.even? ? 'ARTEMIEV' : "CHOCHO",
    guide_pay: @index.even? ? 600 : 1800,
    vehicle: @index.even? ? 'CAR' : 'VAN',
    vehicle_pay: @index.even? ? 1500 : 4200
    )
  @gr3.tour_reservations << @reservations3
  @gr3.save


puts "4st Group R Created"


