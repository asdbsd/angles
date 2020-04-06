class GroupTourReservationsController < ApplicationController
  before_action :find_group_reservation, only: [:edit, :show, :update, :destroy]
  before_action :define_selected_dates, only: [:edit, :new]

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
      redirect_to group_tour_reservations_path
    else
      render 'new'
    end
  end

  def edit
    @ordered_list = @group_tour_reservation.tour_reservations
    @reservations_list = @ordered_list.map(&:id)
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
                                                   :vehicle, :selected_date, :vehicle_pay,
                                                   tour_reservation_ids:[])
  end

  def define_selected_dates
    params[:date] ||= @group_tour_reservation.date
    @group_tour_reservation.selected_date = params[:date]
  end

  def find_group_reservation
    @group_tour_reservation = GroupTourReservation.find(params[:id])
  end

end
