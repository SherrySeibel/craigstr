class RegionsController < ApplicationController
  def index
  end

  def create
    @region = Region.new(region_params)

    if @region.save
      redirect_to :dashboard
    else
      @category = Category.new
      render "admin_options/index"
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
