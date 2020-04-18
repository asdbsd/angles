class TourReservation < ApplicationRecord

  belongs_to :tour
  belongs_to :group_tour_reservation, optional: true

  after_initialize :set_defaults


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

  def set_defaults
    self.voucher            ||= "00000"
    self.ad_sale_price      ||= 0.00
    self.add_ad_sale_price  ||= 0.00
    self.ch_sale_price      ||= 0.00
    self.add_ch_sale_price  ||= 0.00
    self.add_chg_sale_price ||= 0.00
    self.pax_ad             ||= 0
    self.pax_add_ad         ||= 0
    self.pax_ch             ||= 0
    self.pax_add_ch         ||= 0
    self.pax_add_chg        ||= 0
  end
end
