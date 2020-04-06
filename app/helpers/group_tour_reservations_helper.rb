module GroupTourReservationsHelper

  def reservations_by_date
    @available_reservations = TourReservation.where('date = ?', "#{@group_tour_reservation.selected_date}")
  end
end
