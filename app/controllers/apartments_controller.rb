class ApartmentsController < ApplicationController
  def index
    @school_data = SchoolZone.all
    @apartments = Apartment.all
    #  if params
    #   @latitude = params[:latitude]
    #   @longitude = params[:longitude]
    # end
  end
  def create
    latlng_array = Geocoder.coordinates(params[:search])
    binding.pry
    redirect_to '/apartments'
  end
end