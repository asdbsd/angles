class GroupTourReservation < ApplicationRecord
  has_many :tour_reservations, dependent: :nullify
  accepts_nested_attributes_for :tour_reservations,
                                reject_if: lambda { |attr| attr['id'].blank? }

  attribute :date, :datetime, default: DateTime.now

  validates_presence_of :name

end
