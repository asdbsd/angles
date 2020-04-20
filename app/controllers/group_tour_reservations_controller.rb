class GroupTourReservationsController < ApplicationController
  before_action :find_group_reservation, only: [:edit, :show, :update, :destroy]

  def index
    respond_to do |format|
      format.html { @group_tour_reservations = GroupTourReservation.order("date ASC").page(params[:page])}
      format.json { @group_tour_reservations }
    end
  end

  def show

  end

  def new
    @group_tour_reservation = params[:selected_date].blank? ? GroupTourReservation.new :
                              GroupTourReservation.new(date: params[:selected_date])
  end

  def create
    @group_tour_reservation = GroupTourReservation.new(group_tour_reservation_params)

    respond_to do |format|
      if @group_tour_reservation.save
        format.html { redirect_to @group_tour_reservation }
        format.js
      elsif
        format.html { render 'new' }
        #byebug
        format.js
      end
    end
  end

  ## GET
  def edit
  end
  #POST
  def update

    respond_to do |format|
      if @group_tour_reservation.update(group_tour_reservation_params)
        format.html { redirect_to edit_group_tour_reservation_path(@group_tour_reservation) }
        format.js
      else
        format.html { render 'edit' }
        format.js
      end
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
                                                   tour_reservation_ids: [])
  end

  def change_list_date
    @group_tour_reservation = params[:group_tour_reservation]
    render 'new'
  end

  def find_group_reservation
    @group_tour_reservation = GroupTourReservation.find(params[:id])
  end

end
