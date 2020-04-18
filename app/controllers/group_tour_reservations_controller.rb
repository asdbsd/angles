class GroupTourReservationsController < ApplicationController
  before_action :find_group_reservation, only: [:edit, :show, :update, :destroy]
  before_action :current_group_reservations, only: [:edit]
  before_action :available_reservations, only: [:new, :edit]

  def index
    @group_tour_reservations = GroupTourReservation.order("date ASC").page(params[:page])
  end

  def show
  end

  def new
    @group_tour_reservation = GroupTourReservation.new
  end

  def create
    @group_tour_reservation = GroupTourReservation.new(group_tour_reservation_params)

    if @group_tour_reservation.save
      redirect_to group_tour_reservation_path(@group_tour_reservation)
    else
      render 'new'
    end
  end

  def edit
  end

  def update
    if @group_tour_reservation.update(group_tour_reservation_params)
      redirect_to edit_group_tour_reservation_path(@group_tour_reservation)
    else
      render 'edit'
    end
  end

  def destroy
    @group_tour_reservation.destroy
    redirect_to group_tour_reservations_path, notice: 'Group Reservation was deleted'
  end

  private

  def group_tour_reservation_params
    params.require(:group_tour_reservation).permit(:name, :date, :guide, :guide_pay,
                                                   :vehicle, :vehicle_pay,
                                                   tour_reservation_ids:[])
  end

  def find_group_reservation
    @group_tour_reservation = GroupTourReservation.find(params[:id])
  end

  def current_group_reservations
    # current group's tour reservations
    @ordered_list = @group_tour_reservation.tour_reservations.order("date ASC")
    @reservations_list = @ordered_list.map(&:id)
  end

  def available_reservations
    @available_tour_reservations = TourReservation.where('group_tour_reservation_id = ? AND date = ?', 'NULL', "#{params[:date]}")
  end

end
