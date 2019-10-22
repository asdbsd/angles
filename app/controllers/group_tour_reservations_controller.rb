class GroupTourReservationsController < ApplicationController
  before_action :find_group_reservation, only: [:edit, :show, :update, :destroy]

  def index
    @group_tour_reservations = GroupTourReservation.order("date ASC").page(params[:page])
  end

  def show
  end

  def new
    if params[:date].nil? || params[:date].empty?
      redirect_to group_tour_reservations_path
    else
      @group_tour_reservation = GroupTourReservation.new
      set_tour_res
    end
  end

  def create
    @group_tour_reservation = GroupTourReservation.new(group_tour_reservation_params)
    if @group_tour_reservation.save
      redirect_to group_tour_reservations_path
    else
      render 'new'
    end
  end

  def edit
    set_tour_res
  end

  def update
    if @group_tour_reservation.update(group_tour_reservation_params)
      redirect_to group_tour_reservations_path
    else
      render 'edit'
    end
  end

  def destroy
    @group_tour_reservation.tour_reservations.each do |res|
      res.update(status: 0)
    end
    @group_tour_reservation.destroy
    redirect_to group_tour_reservations_path, notice: 'Group Reservation was deleted'
  end

  private

  def group_tour_reservation_params
    params.require(:group_tour_reservation).permit(:date, :name, :guide, :guide_pay, :vehicle, :vehicle_pay, tour_reservation_ids:[])
  end

  def find_group_reservation
    @group_tour_reservation = GroupTourReservation.find(params[:id])
  end

  def set_tour_res
    if params[:date].nil?
      @tour_res = TourReservation.where('date=?', @group_tour_reservation.date)
    else
      @tour_res = TourReservation.where('date=? AND status=?', params[:date], 0)
    end 
  end

end
