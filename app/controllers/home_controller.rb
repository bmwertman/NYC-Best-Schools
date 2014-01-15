class HomeController < ApplicationController
  def index
    @school_data = SchoolZone.all
  end
end