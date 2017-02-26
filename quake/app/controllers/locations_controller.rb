class LocationsController < ApplicationController
  def index
    @locations = ['home', 'Jim', 'Mom']
  end
end
