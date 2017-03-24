class LocationsController < ApplicationController
  def index
    @locations = Location.all
  end

  def show
    @location = Location.find(params[:id])
  end

  def edit
    @location = Location.find(params[:id])
  end

  def update
    @location = Location.find(params[:id])
    if @location.update(location_params)
      flash[:success] = "Location successfully updated!"
      redirect_to location_path(@location)
    else
      render :edit
    end
  end

  def new
    @location = Location.new
  end

  def create
    @location = Location.new(location_params)
    if @location.save
      flash[:success] = "Location successfully created!"
      redirect_to location_path(@location)
    else
      render :new
    end
  end

  def destroy
    @location = Location.find(params[:id])
    @location.destroy
    flash[:danger] = "Location successfully deleted."
    redirect_to locations_path
  end

private
  def location_params
    params.require(:location).permit(:nickname, :locname, :latitude, :longitude, :maxradiuskm, :minmagnitude)
  end
end
