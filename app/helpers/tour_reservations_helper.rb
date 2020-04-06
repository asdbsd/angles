module TourReservationsHelper

  def reservation_pax(reservation)
    adults = reservation.pax_ad + reservation.pax_add_ad
    content_tag(:small, "AD: #{adults}; CH: #{reservation.pax_ch}")
  end

end
