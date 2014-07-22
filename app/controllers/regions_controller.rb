class RegionsController < ApplicationController
  def index
    @region = Region.new
  end

  def create
    @region = Region.new(region_params)

    if @region.save
      redirect_to :dashboard 
    else
      render :index
    end
  end

  private

  def region_params
    params.require(:region).
      permit(
        :name,
      )
  end
end