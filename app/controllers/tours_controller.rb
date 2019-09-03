class ToursController < ApplicationController
  before_action :find_tour, only: [:show, :edit, :update, :destroy]

  def index
    if params[:sort]
      @tours = Tour.order(params[:sort]).page(params[:page])
    else
      @tours = Tour.order("name ASC").page(params[:page])
    end
  end

  def show
  end

  def new
    @tour = Tour.new
  end

  def create
    @tour = Tour.new(tour_params)
    if @tour.save
      redirect_to tours_path
    else
      render 'new'
    end
  end

  def edit
  end

  def update
    if @tour.update(tour_params)
      flash[:notice] = "Tour Updated"
      redirect_to tours_path
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
      params.require(:tour).permit(:name, :ad_price, :ch_price, :add_ad_price,
                                          :add_ch_price, :add_chg, :description)
    end

end
