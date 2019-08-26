class ToursController < ApplicationController
  before_action :find_tour, only: [:show, :edit, :update, :destroy]

  def index
    @tours = Tour.all
  end

  def show
  end

  def new
    @tour = Tour.new
  end

  def create
    if @tour.save(tour_params)
      redirect_to tour_path(@tour)
    else
      render 'new'
    end
  end

  def edit
  end

  def update
    if @tour.save(tour_params)
      redirect_to tour_path(@tour)
    else
      render 'edit'
    end
  end

  def destroy
    @tour.destroy
    redirect_to tours_path
  end

  private

    def find_tour
      @tour = Tour.find(params[:id])
    end

    def tour_params
      params.require(:tours).permit(:name, :description, :ad_price, :add_ad_price, :ch_price, :add_ch_price, :add_chg)
    end
end
