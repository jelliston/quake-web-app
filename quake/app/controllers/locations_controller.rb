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
    location_params = params.require(:location).permit(:nickname, :locname, :latitude, :longitude, :minradiuskm, :maxmagnitude)
    @location.update(location_params)
    redirect_to location_path(@location)
  end

end
