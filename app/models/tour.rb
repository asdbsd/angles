class Tour < ApplicationRecord
  has_many :tour_reservations
  attribute :ad_price, :decimal, default: 0.00
  attribute :ch_price, :decimal, default: 0.00
  attribute :add_ad_price, :decimal, default: 0.00
  attribute :add_ch_price, :decimal, default: 0.00
  attribute :add_chg, :decimal, default: 0.00

  validates :name, presence: true, length: { maximum: 65 }
  validates :ad_price, presence: true, numericality: { greater_than_or_equal_to: 0.01 }
  validates :ch_price, presence: true, numericality: { greater_than_or_equal_to: 0.00 }
  validates :add_ad_price, presence: true, numericality: { greater_than_or_equal_to: 0.00 }
  validates :add_ch_price, presence: true, numericality: { greater_than_or_equal_to: 0.00 }
  validates :add_chg, presence: true, numericality: { greater_than_or_equal_to: 0.00 }

end
