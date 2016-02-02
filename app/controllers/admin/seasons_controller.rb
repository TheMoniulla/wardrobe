class Admin::SeasonsController < Admin::AdminController

  def index
    @seasons = Season.all
  end

  def show
    @season = Season.find(params[:id])
  end
end