class Tour < ApplicationRecord
  after_initialize :default_values

  validates :name, presence: true, length: { maximum: 65 }, uniqueness: true, uniqueness: true
  validates :ad_price, presence: true, numericality: { greater_than_or_equal_to: 0.01 }
  validates :ch_price, presence: true, numericality: { greater_than_or_equal_to: 0.00 }
  validates :add_ad_price, presence: true, numericality: { greater_than_or_equal_to: 0.00 }
  validates :add_ch_price, presence: true, numericality: { greater_than_or_equal_to: 0.00 }
  validates :add_chg, presence: true, numericality: { greater_than_or_equal_to: 0.00 }



  private
  def default_values
    ad_price = 0.00
    ch_price = 0.00
    add_ad_price = 0.00
    add_ch_price = 0.00
    add_chg = 0.00
  end

end
