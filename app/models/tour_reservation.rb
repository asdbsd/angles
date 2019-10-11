class TourReservation < ApplicationRecord
  belongs_to :tour
  has_many :grouped_reservations
  has_many :group_tour_reservations, through: :grouped_reservations

  attribute :voucher, :string, default: "00000"
  attribute :p_up_time, :time, default: Time.now.strftime("%I:%M %p")
  attribute :ad_sale_price, :decimal, default: 0.00
  attribute :add_ad_sale_price, :decimal, default: 0.00
  attribute :ch_sale_price, :decimal, default: 0.00
  attribute :add_ch_sale_price, :decimal, default: 0.00
  attribute :add_chg_sale_price, :decimal, default: 0.00
  attribute :pax_ad, :integer, default: 0
  attribute :pax_add_ad, :integer, default: 0
  attribute :pax_ch, :integer, default: 0
  attribute :pax_add_ch, :integer, default: 0
  attribute :pax_add_chg, :integer, default: 0

  validates :voucher, length: { in: 2..20 }
  validates :ad_sale_price, presence: true, numericality: { greater_than_or_equal_to: 0.01}
  validates :add_ad_sale_price, presence: true, numericality: { greater_than_or_equal_to: 0.0}
  validates :ch_sale_price, presence: true, numericality: { greater_than_or_equal_to: 0.0}
  validates :add_ch_sale_price, presence: true, numericality: { greater_than_or_equal_to: 0.0}
  validates :add_chg_sale_price, presence: true, numericality: { greater_than_or_equal_to: 0.0}
  validates :pax_ad, presence: true, numericality: { greater_than_or_equal_to: 1}
  validates :pax_add_ad, presence: true, numericality: { greater_than_or_equal_to: 0}
  validates :pax_ch, presence: true, numericality: { greater_than_or_equal_to: 0}
  validates :pax_add_ch, presence: true, numericality: { greater_than_or_equal_to: 0}
  validates :pax_add_chg, presence: true, numericality: { greater_than_or_equal_to: 0}




  def tour_object_list
    "#{date.strftime("%d %B %Y")}, #{tour.name}, #{voucher}"
  end

end
