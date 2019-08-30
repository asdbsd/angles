class TourReservationsController < ApplicationController
  before_action :find_tour_reservations, only: [:show, :edit, :update, :destroy]

  def index
    @t_reservations = TourReservation.order("date ASC").page(params[:page])
  end

  def show
  end

  def new
    @t_reservation = TourReservation.new
  end

  def create
    @t_reservation = TourReservation.new(tour_reservations_params)
    if @t_reservation.save
      redirect_to tour_reservations_path
    else
      render 'new'
    end
  end

  def edit
  end

  def update
    if @t_reservation.update(tour_reservations_params)
      redirect_to tour_reservations_path
    else
      render 'edit'
    end
  end

  def destroy
    @t_reservation.destroy
    redirect_to tour_reservations_path
  end


  private

    def tour_reservations_params
      params.require(:tour_reservation).permit(:tour_id, :date, :hotel, :phone,
                                                               :ad_sale_price, :ch_sale_price,
                                                               :add_ad_sale_price, :add_ch_sale_price,
                                                               :add_chg_sale_price, :pax_ad, :pax_ch,
                                                               :pax_add_ad, :pax_add_ch, :pax_add_chg,
                                                               :agent, :guide, :voucher, :p_up_time)
    end

    def find_tour_reservations
        @t_reservation = TourReservation.find(params[:id])
    end
end
