class BandsController < ApplicationController
  def new
  end

  def create
    new_band = Band.new
    new_band.band = params[:band]
    new_band.genre = params[:genre]
    new_band.founded = params[:founded]
    new_band.save
    redirect_to '/'
  end

  def edit
    @band_id = params[:id]
  end

  def update
    band = Band.find(params[:id])
    band.band = params[:band]
    band.genre = params[:genre]
    band.founded = params[:founded]
    band.save
    redirect_to '/'
  end
end