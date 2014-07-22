class AdminOptionsController < ApplicationController
  def index
    @region = Region.new
  end

  def create
    @region = Region.new(region_params)

    if @region.save
      redirect_to :regions 
    else
      render :new
    end
  end

  private

  def region_params
    params.require(:region).permit(
      :name
    )
  end
end