class HomeController < ApplicationController
  def index
    redirect_to "/apartments"
  end
end